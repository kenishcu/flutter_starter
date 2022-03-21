import 'package:flutter/material.dart';

class ButtonHeaderWidget extends StatelessWidget {

  final VoidCallback? onPressed;

  final IconData? iconData;

  final String? buttonTitle;

  const ButtonHeaderWidget({Key? key,
    required this.onPressed,
    required this.iconData,
    required this.buttonTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 120,
      height: 80,
      margin: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: onPressed,
        child: Column(
          children: [
            Icon(
              iconData,
              size: 40,
              color: Theme.of(context).colorScheme.primaryVariant,
            ),
            Container(
              margin: const EdgeInsets.only(top: 3),
              child: Text(
                  buttonTitle!
              ),
            )
          ],
        ),
      ),
    );

  }


}