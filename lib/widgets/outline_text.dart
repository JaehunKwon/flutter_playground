import 'package:flutter/material.dart';

class OutlineText extends StatelessWidget {
  final Text child;
  final double strokeWidth;
  final Color? strokeColor;
  final TextOverflow? overflow;

  const OutlineText(
    this.child, {
    super.key,
    this.strokeWidth = 2,
    this.strokeColor,
    this.overflow,
  });

  // Option: can add flags
  // e.g.) read a related state and globally apply if needed
  // final backgroundProvider = ref.watch(backgroundSelectProvider);
  // if (backgroundProvider.imagePath.isEmpty) {
  //   return child;
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // stroke text
        Text(
          // need to set text scale if needed
          textScaleFactor: child.textScaleFactor,
          child.data!,
          style: TextStyle(
            fontSize: child.style?.fontSize,
            fontWeight: child.style?.fontWeight,
            foreground: Paint()
              ..color = strokeColor ?? Theme.of(context).shadowColor
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth,
          ),
          overflow: overflow,
        ),
        child
      ],
    );
  }
}
