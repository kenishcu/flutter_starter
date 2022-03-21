import 'package:flutter/material.dart';

class ButtonServiceWidget extends StatelessWidget {

  final VoidCallback? onPressed;

  final IconData? iconData;

  final String? buttonTitle;

  const ButtonServiceWidget({Key? key,
    required this.onPressed,
    required this.iconData,
    required this.buttonTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 90,
      height: 135,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Container(
              width: 85,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Theme.of(context).colorScheme.background,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.background,
                      blurRadius: 1,
                      offset: Offset(1, 1), // Shadow position
                    ),
                  ]
              ),
              child: TextButton(
                onPressed: onPressed,
                child: Icon(
                  iconData,
                  size: 43,
                  color: Theme.of(context).colorScheme.primaryVariant,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          SizedBox(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(buttonTitle!,  textAlign: TextAlign.center, style: const TextStyle(
                fontSize: 15
              )),
            ),
          )

        ],
      ),
    );

  }


}