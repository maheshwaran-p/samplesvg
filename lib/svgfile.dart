import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class CandyPainter extends CustomPainter {
  final double area = 32 * 32;
  final double width = -32 * 0.5;
  final double height = -32 * 0.5;

  final double requiredSize;

  CandyPainter(this.requiredSize);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(requiredSize / sqrt(area));

    canvas.drawPath(
      parseSvgPathData("""M21.5 5a5.5 5.5 0 1 0 0 11 5.5 5.5 0 1 0 0-11z""")
          .shift(Offset(width, height)),
      Paint()..color = const Color(0xffcfb1fc),
    );

    canvas.drawPath(
      parseSvgPathData(
              """M24 9.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Zm5 1.5c0 4.411-3.589 8-8 8a7.885 7.885 0 0 1-2.963-.573l-5.4 4.96a.986.986 0 0 1-.872.244l-.29-.058.03.322a1 1 0 0 1-.321.834l-.58.529a1.011 1.011 0 0 1-.572.257l-.572.057-.046.442a1.001 1.001 0 0 1-.318.633l-1.74 1.6a1.002 1.002 0 0 1-1.005.207l-1.95-.68a.999.999 0 0 1-.615-.612l-.74-2.1a1 1 0 0 1 .227-1.029l10.162-10.438A7.924 7.924 0 0 1 13 11c0-4.411 3.589-8 8-8s8 3.589 8 8Zm-2 0c0-3.309-2.691-6-6-6s-6 2.691-6 6c0 .837.173 1.653.515 2.426a1 1 0 0 1-.198 1.101L5.14 24.983l.373 1.06.93.325 1.021-.937.091-.874a1 1 0 0 1 .893-.892l1.016-.103-.11-1.136c-.03-.315.09-.625.325-.838a.993.993 0 0 1 .866-.238l1.112.22 5.514-5.062a.998.998 0 0 1 1.127-.156A5.94 5.94 0 0 0 21 17c3.309 0 6-2.691 6-6Z""")
          .shift(Offset(width, height)),
      Paint()..color = const Color(0xff9966cc),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CandyWidget extends StatelessWidget {
  final double size;

  const CandyWidget({Key? key, required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: Colors.blue,
      alignment: Alignment.center,
      child: CustomPaint(
        painter: CandyPainter(size),
      ),
    );
  }
}

        //   class MyGame extends FlameGame with HasTappables {
        //     @override
        //     Future<void> onLoad() async {
        //       add(CandyComponent(100)
        //         ..width = 100
        //         ..height = 100);
        //     }
        //   }
        //   class CandyComponent extends PositionComponent {
        //     final double requiredSize;
        //     CandyComponent(this.requiredSize);
        //     @override
        //     Future<void> onLoad() async {
        //       add(CircleHitbox());
        //     }
        //     @override
        //     void render(Canvas canvas) {
        //       canvas.save();
        //       canvas.translate(requiredSize * 0.5, requiredSize * 0.5);
        //       CandyPainter(requiredSize).paint(canvas, Size.zero);
        //       canvas.restore();
        //     }
        //   }
        
        