import 'package:flutter/material.dart';

typedef RemovedItemBuilder<T> = Widget Function(
    T item, BuildContext context, Animation<double> animation);

/// Keeps a Dart [List] in sync with an [AnimatedList].
///
/// The [insert] and [removeAt] methods apply to both the internal list and
/// the animated list that belongs to [listKey].
///
/// This class only exposes as much of the Dart List API as is needed by the
/// sample app. More list methods are easily added, however methods that
/// mutate the list must make the same changes to the animated list in terms
/// of [AnimatedListState.insertItem] and [AnimatedList.removeItem].
class ListModel<E> {
  ListModel({
    required this.listKey,
    required this.removedItemBuilder,
    Iterable<E>? initialItems,
  }) : _items = List<E>.from(initialItems ?? <E>[]);

  final GlobalKey<AnimatedListState> listKey;
  final RemovedItemBuilder<E> removedItemBuilder;
  final List<E> _items;

  AnimatedListState? get _animatedList => listKey.currentState;

  /// Function [insert]: insert item to animated list
  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList!.insertItem(index);
  }

  /// Function [shrinkInOne]: remove all item in animatedList, but keep the first one.
  void shrinkInOne() {
    int itemsLength = _items.length;
    for(int i = itemsLength - 1; i > 0; i--) {
      final E removedItem = _items.removeAt(i);
      if (removedItem != null) {
        _animatedList!.removeItem(
          i,
              (BuildContext context, Animation<double> animation) {
            return removedItemBuilder(removedItem, context, animation);
          },
        );
      }
    }
  }

  /// Function [ setNewList ]: create new list Items
  void setNewList(List<E> listE) {
    for (var i = 0; i <= _items.length - 1; i++) {
      _animatedList!.removeItem(0,
              (BuildContext context, Animation<double> animation) {
            return Container();
          });
    }
    _items.clear();
    for(int i = 0; i < listE.length; i++) {
      _items.insert(i, listE[i]);
      if(_animatedList != null) {
        _animatedList!.insertItem(i);
      }
    }
  }

  /// Function [removeAt] remove Item at index
  /// Params [index]
  /// Results: Entity of Item removed.
  E removeAt(int index) {
    final E removedItem = _items.removeAt(index);
    if (removedItem != null) {
      _animatedList!.removeItem(
        index,
            (BuildContext context, Animation<double> animation) {
          return removedItemBuilder(removedItem, context, animation);
        },
      );
    }
    return removedItem;
  }

  /// Get length of items
  int get length => _items.length;

  /// get item by index
  E operator [](int index) => _items[index];

  /// get index of item
  int indexOf(E item) => _items.indexOf(item);
}


/// Displays its integer item as 'item N' on a Card whose color is based on
/// the item's value.
///
/// The text is displayed in bright green if [selected] is
/// true. This widgets's height is based on the [animation] parameter, it
/// varies from 0 to 128 as the animation varies from 0.0 to 1.0.
class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    this.onTap,
    required this.animation,
    required this.backgroundColor,
    required this.shadowColor,
    required this.iconColor,
    required this.iconData,
    required this.title,
    required this.subTitle,
    required this.time,
  })  : super(key: key);

  final Animation<double> animation;
  final Color backgroundColor;
  final Color iconColor;
  final Color shadowColor;
  final VoidCallback? onTap;
  final IconData? iconData;
  final String? title;
  final String? subTitle;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: SizedBox(
            height: 75.0,
            child: Container(
              decoration:  BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    offset: const Offset(20, 20),
                    spreadRadius: 5,
                    blurRadius: 7,
                  )
                ],
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: backgroundColor,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Icon(iconData, color: iconColor, size: 35),
                  ),
                  title: Text(title!,  overflow: TextOverflow.ellipsis,),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 170,
                        child: Text(subTitle!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle()),
                      ),
                      SizedBox(
                        width: 150,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(time!, overflow: TextOverflow.ellipsis, style: const TextStyle()),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}