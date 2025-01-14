import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimationPage extends StatelessWidget {
  const AnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: AnimationWidget()),
    );
  }
}

class AnimationWidget extends StatefulWidget {
  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotation;
  late Animation<double> opacity;
  late Animation<double> moveDown;
  late Animation<double> scale;
  late Animation<BorderRadius?> borderRadius;
  late Animation<Color?> colorContainer;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 4000));
    rotation = Tween(begin: 0.0, end: 2 * Math.pi).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.bounceOut,
    ));

    opacity = Tween(begin: 0.1, end: 1.0).animate(controller);
    moveDown = Tween(begin: 0.0, end: 200.0).animate(controller);
    scale = Tween(begin: 0.0, end: 1.0).animate(controller);

    borderRadius = BorderRadiusTween(
            begin: BorderRadius.circular(4.0), end: BorderRadius.circular(75.0))
        .animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.375, 0.500, curve: Curves.ease),
      ),
    );
    colorContainer =
        ColorTween(begin: Colors.indigo[100], end: Colors.red[400]).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.500, 0.750, curve: Curves.ease),
      ),
    );

    controller.addListener(() {
      print('status: ${controller.status}');
      if (controller.status == AnimationStatus.completed) {
        controller.reset();
      }
      // } else if (controller.status == AnimationStatus.dismissed) {
      //   controller.forward();
      // }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // controller.repeat();

    return AnimatedBuilder(
      child: _MyContainer(),
      animation: controller,
      builder: (context, childContainer) {
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo, width: 3.0),
              color: colorContainer.value,
              borderRadius: borderRadius.value),

          // child: Transform.translate(
          //   offset: Offset(0.0, moveDown.value),
          //   child: Transform.rotate(
          //     angle: rotation.value,
          //     child: Opacity(
          //       opacity: opacity.value,
          //       child:
          //           Transform.scale(scale: scale.value, child: childContainer),
          //     ),
          //   ),
          // ),
        );
      },
    );
  }
}

class _MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(color: Colors.orange),
    );
  }
}
