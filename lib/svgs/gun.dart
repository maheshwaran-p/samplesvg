import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class GunPainter extends CustomPainter {
  final double area = 512 * 512;
  final double width = -512 * 0.5;
  final double height = -512 * 0.5;

  final double requiredSize;
  GunPainter(this.requiredSize);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(requiredSize / sqrt(area));

    canvas.drawPath(
        parseSvgPathData(
                """M65 101c0 9.7-.3 13-1.2 13-.7 0-7.1-2.4-14.3-5.4l-13-5.4-2.1 9c-3.8 15.8-3.9 14.4 1.1 17.8 2.4 1.7 4.7 3.5 5 4 .3.6-1.2 10.1-3.4 21.2-2.2 11.2-4.6 24.3-5.3 29.2l-1.3 8.8-6 2.2C10.4 200.5 2.7 205.9.9 212c-1.8 6.1 1.8 11.3 13.9 19.9 18.8 13.3 29 27.4 32.7 44.9 3.1 14.9 2.3 20-8.9 58.7-8.5 29.7-10.9 39.3-12.6 52-1.6 11.6-.7 26.1 2.2 32.6l2 4.9h117l-.9-6.3c-1.4-10.8-.9-42.2 1-52.2 3.5-19.2 11-39.5 19.4-52.5 5.5-8.7 9.6-10.5 23.3-10.4 9.2 0 11.7.5 20 3.3 8.8 3.1 10.2 3.3 18.5 2.7 12.2-.7 20.1-2.9 32.5-8.8 9.5-4.6 11.4-6 20.5-15.2 8-8 11.1-12 15.2-19.6 2.8-5.2 6.1-12.3 7.3-15.8l2.3-6.2h30.1c28.3 0 30.3-.1 33.4-2 3.7-2.3 7.2-7.5 7.2-10.8V229h93v-15h29v-64h13v-34h-13v-3.4c0-2.1-.6-3.6-1.5-4-1.1-.4-1.5-2.2-1.5-6.8 0-6.9-.4-7.9-3.7-9.7-2.3-1.2-10.3-1.5-14.1-.5-3.2.9-5.2 5.4-5.2 11.9v5.5H310v14h-96v-14H79v-2.5c0-1.7-2.3-5.3-6.6-10.5-3.6-4.4-6.8-8-7-8-.2 0-.4 5.8-.4 13zm224 130.2c0 3.3 3.6 8.7 7.1 10.6 3.6 2.1 3.5 3-2.2 14.6-8.2 16.9-19.2 28.1-35.4 36.2-15 7.5-36.8 10.6-47.8 6.8-5.8-2-12-8.1-15.8-15.6-3.4-6.8-5.9-15.6-5.9-21 0-5.5 3.7-12.5 8.3-15.9 3.8-2.7 4-2.8 6.9-1.3 1.9 1 4.9 1.5 8.1 1.2l5-.3 4.2 5.5c10.5 13.6 21.4 21 31.3 21 2.8 0 5.2-.3 5.1-.8 0-.4-2.7-2-6.1-3.6-7.3-3.5-15.8-11.8-21-20.6l-3.7-6.3 2.8-2.6c1.5-1.4 3.4-4.3 4.1-6.4l1.4-3.7H289v2.2z""")
            .shift(Offset(width, height)),
        Paint()
          ..color =
              const Color(0xff000000)); //<--- change the color as you want
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class GunViewWidget extends StatelessWidget {
  final double size;

  const GunViewWidget({Key? key, required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      child: CustomPaint(
        painter: GunPainter(size),
      ),
    );
  }
}
