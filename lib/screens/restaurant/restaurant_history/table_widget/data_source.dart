import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:itrapp/controllers/restaurant/product_restaurant_controller.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:itrapp/utils/convert.dart';

import '../../../../models/order/product_model.dart';
import '../../../../models/order/order_model.dart';

/// Async datasource for AsynPaginatedDataTabke2 example. Based on AsyncDataTableSource which
/// is an extension to FLutter's DataTableSource and aimed at solving
/// saync data fetching scenarious by paginated table (such as using Web API)
class DessertDataSourceAsync extends AsyncDataTableSource {
  DessertDataSourceAsync(this.context) {
    print('DessertDataSourceAsync created');
  }

  late final BuildContext context;

  DessertDataSourceAsync.empty() {
    _empty = true;
    print('DessertDataSourceAsync.empty created');
  }

  DessertDataSourceAsync.error() {
    _errorCounter = 0;
    print('DessertDataSourceAsync.error created');
  }

  bool _empty = false;
  int? _errorCounter;

  RangeValues? _caloriesFilter;

  RangeValues? get caloriesFilter => _caloriesFilter;
  set caloriesFilter(RangeValues? calories) {
    _caloriesFilter = calories;
    refreshDatasource();
  }

  final RestaurautService _repo = RestaurautService();

  String _sortColumn = "name";
  bool _sortAscending = true;

  void sort(String columnName, bool ascending) {
    _sortColumn = columnName;
    _sortAscending = ascending;
    refreshDatasource();
  }

  @override
  Future<AsyncRowsResponse> getRows(int start, int end) async {
    print('getRows($start, $end)');
    if (_errorCounter != null) {
      _errorCounter = _errorCounter! + 1;

      if (_errorCounter! % 2 == 1) {
        await Future.delayed(const Duration(milliseconds: 1000));
        throw 'Error #${((_errorCounter! - 1) / 2).round() + 1} has occured';
      }
    }

    var index = start;

    assert(index >= 0);

    // List returned will be empty is there're fewer items than startingAt
    var x = await _repo.getData(
        start, end, _caloriesFilter, _sortColumn, _sortAscending);

    var r = AsyncRowsResponse(
        x.totalRecords,
        x.data.map((order) {
          int i = x.getIndexOfData(order);
          return DataRow(
            key: ValueKey<int>(i),
            cells: [
              DataCell(
                SizedBox(
                  width: 50,
                  child: Center(
                    child: Text('${i+1}'),
                  ),
                )
              ),
              DataCell(
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      order.reservationId.toString(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ),
              DataCell(
                SizedBox(
                  width: 400,
                  child: Center(
                    child: Text(
                      '${order.roomName}',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ),
              DataCell(
                  SizedBox(
                    width: 100,
                    child: Center(
                      child: Text(
                        order.mealTypeModel?.lang?['meal_type_name_${Localizations.localeOf(context).languageCode}'] ?? order.mealTypeModel!.mealTypeName!,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
              ),
              DataCell(
                SizedBox(
                  width: 250,
                  child: Center(
                    child: Text('${order.paymentType!}')
                  ),
                )
              ),
              DataCell(
                SizedBox(
                  width: 200,
                  child: Center(
                    child: Text(
                      convertFromUnixToDatetime(order.createAt!),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ),
              DataCell(
                  SizedBox(
                    width: 200,
                    child: Center(
                      child: Text(
                        convertFromUnixToTimeString(order.usedAt!),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
              ),
              DataCell(
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      '${order.status}',
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                )
              ),
              DataCell(
                SizedBox(
                  width: 200,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        _showDetail(context, order.products!);
                      },
                      icon: const Icon(Icons.menu_book),
                    ),
                  )
                )
              )
            ],
          );
        }).toList());

    return r;
  }
}

class DesertsFakeWebServiceResponse {
  DesertsFakeWebServiceResponse(this.totalRecords, this.data);

  /// THe total ammount of records on the server, e.g. 100
  final int totalRecords;

  /// One page, e.g. 10 records
  final List<OrderModel> data;

  int getIndexOfData(OrderModel order) {
    return data.indexOf(order);
  }
}

class RestaurautService {

  Future<DesertsFakeWebServiceResponse> getData(int startingAt, int count,
      RangeValues? caloriesFilter, String sortedBy, bool sortedAsc) async {
     final ProductRestaurantController restaurantController = Get.find<ProductRestaurantController>();
     List<OrderModel> orders = await restaurantController.getOrderHistory();
     return DesertsFakeWebServiceResponse(orders.length, orders);
  }
}

Future _showDetail(BuildContext context, List<ProductModel> products)
{
  int _total = 0;
  if(products.isNotEmpty) {
    for (var element in products) {
      _total = _total + element.price! * element.quantity!;
    }
  }
  return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        Size size =  MediaQuery.of(context).size;
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.all(10),
          child: Container(
              height: size.height * 0.8,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: size.width * 0.8,
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryVariant
                      ),
                      child: Text("Chi tiết đơn đặt hàng", style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Roboto',
                      )),
                    ),
                    Container(
                      height: 480,
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: ListView(children: <Widget>[
                        DataTable(
                            columns: [
                              DataColumn(label: Text('Tên')),
                              DataColumn(label: Text('SL')),
                              DataColumn(label: Text(AppLocalizations.of(context).getTranslate('note'))),
                              DataColumn(label: Text('Thành tiền')),
                            ],
                            rows: products.map((product) => DataRow(
                                cells: [
                                  DataCell(
                                      Container(
                                        width: 200,
                                        height: 100,
                                        padding: EdgeInsets.only(top: 5),
                                        decoration: BoxDecoration(
                                        ),
                                        child:  ConstrainedBox(
                                          constraints:  BoxConstraints(maxHeight: 400, minHeight: 100.0),
                                          child:  Text(product.productName!),
                                        ),
                                      )
                                  ),
                                  DataCell(
                                    Container(
                                        width: 50,
                                        height: 100,
                                        padding: EdgeInsets.only(top: 5),
                                        decoration: BoxDecoration(
                                        ),
                                        child: ConstrainedBox(
                                          constraints:  BoxConstraints(maxHeight: 400, minHeight: 100.0),
                                          child: Text(product.quantity.toString()),
                                        )
                                    ),
                                  ),
                                  DataCell(
                                    Container(
                                        width: 550,
                                        height: 100,
                                        padding: EdgeInsets.only(top: 0),
                                        decoration: BoxDecoration(
//                                            border: Border.all()
                                        ),
                                        child: ConstrainedBox(
                                          constraints:  BoxConstraints(maxHeight: 400, minHeight: 100.0),
                                          child: Text(product.note!),
                                        )
                                    ),
                                  ),
                                  DataCell(
                                    Container(
                                        width: 100,
                                        height: 100,
                                        padding: EdgeInsets.only(top: 5),
                                        decoration: BoxDecoration(
                                        ),
                                        child: ConstrainedBox(
                                          constraints:  BoxConstraints(maxHeight: 400, minHeight: 100.0),
                                          child: Text((product.price! * product.quantity!).toString()),
                                        )
                                    ),
                                  ),
                                ]),
                            ).toList()),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Container(
                                width: 700,
                                child: Text(AppLocalizations.of(context).getTranslate('total'), style: TextStyle(
                                    fontSize: 26
                                )),
                              ),
                              Container(
                                width: 300,
                                child: Text(_total.toString(), style: TextStyle(
                                    fontSize: 26
                                )),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Container(
                        child: Container(
                          width: 110,
                          height: 50,
                          margin: EdgeInsets.only(left: 1000, top: 20),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primaryVariant
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(AppLocalizations.of(context).getTranslate('close'), style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                          ),
                        )
                    )
                  ],
                ),
              )
          ),
        );
      }
  );
}