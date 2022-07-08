import 'package:flutter/material.dart';

class InProcessing extends StatefulWidget {
  const InProcessing({Key? key}) : super(key: key);

  @override
  _InProcessingState createState() => _InProcessingState();
}

class _InProcessingState extends State<InProcessing>  with TickerProviderStateMixin {

  late AnimationController controllerAnimation;

  @override
  void initState() {
    controllerAnimation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
      setState(() {});
    });
    controllerAnimation.repeat(reverse: true);
    super.initState();
  }


  @override
  void dispose() {
    controllerAnimation.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 80,
        width: 80,

        child: CircularProgressIndicator(
          value: controllerAnimation.value,
          strokeWidth: 10.0,
          color: Theme.of(context).colorScheme.onPrimary,
          semanticsLabel: 'Linear progress indicator',
        ),
      ));
  }

}