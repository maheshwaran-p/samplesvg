import 'dart:math';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class CandyPainter extends CustomPainter {
  final double area = 512 * 512;
  final double width = -512 * 0.5;
  final double height = -512 * 0.5;
  final double requiredSize;
  CandyPainter(this.requiredSize);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(requiredSize / sqrt(area));
    canvas.drawPath(
        parseSvgPathData(
                """M476.957 121.6c-28.412 20.541-49.688 50.479-59.364 85.306-7.437-28.85-22.275-54.687-42.34-75.34-1.848-21.023-6.302-39.017-13.433-52.596-7.427-14.141-17.422-23.228-29.705-27.008-14.811-4.555-38.564-2.913-68.944 29.208a168.774 168.774 0 0 0-7.168-.154c-77.655 0-142.923 53.468-161.592 125.889-9.677-34.827-30.953-64.765-59.364-85.306C20.399 111.012 0 121.808 0 139.979v218.819c0 18.172 20.399 28.968 35.043 18.38 28.412-20.541 49.688-50.479 59.364-85.306 10.8 41.895 37.195 77.448 72.562 99.975-.002.583.027 1.172.117 1.768 7.056 46.5 26.527 61.796 41.618 66.441a42.148 42.148 0 0 0 12.456 1.858c21.648 0 45.798-15.91 69.324-46.039.529-.677 1.054-1.369 1.581-2.058 61.22-13.596 109.835-61.072 125.527-121.944 9.677 34.827 30.953 64.765 59.364 85.306 14.644 10.587 35.043-.208 35.043-18.38v-218.82c.001-18.171-20.398-28.967-35.042-18.379zM325.645 73.554c6.417 1.975 11.975 7.365 16.522 16.021 3.016 5.742 5.441 12.576 7.303 20.293-17.145-11.706-36.561-20.283-57.445-24.915 12.747-10.104 24.5-14.206 33.62-11.399zM215.17 438.462c-10.029-3.086-18.126-15.024-23.041-33.471 19.676 8.224 41.246 12.77 63.871 12.77 1.08 0 2.156-.014 3.23-.035-16.676 16.828-32.335 24.347-44.06 20.736z""")
            .shift(Offset(width, height)),
        Paint()
          ..color =
              const Color(0xff9e3f51)); //<--- change the color as you want

    canvas.drawPath(
        parseSvgPathData(
                """M334.287 275.632c-19.916 65.822-48.751 115.547-75.057 142.094-1.075.021-2.151.035-3.23.035-22.625 0-44.195-4.546-63.871-12.77l-.008-.028a166.03 166.03 0 0 1-25.153-13.133v.017c-35.366-22.528-61.762-58.08-72.562-99.975-9.677 34.828-30.953 64.765-59.364 85.307C20.399 387.765 0 376.97 0 358.797V139.979c0-18.172 20.399-28.968 35.043-18.38 28.412 20.541 49.688 50.479 59.364 85.306C113.077 134.484 178.345 81.017 256 81.017c2.402 0 4.791.051 7.168.152l-.012.013a165.53 165.53 0 0 1 28.858 3.779.087.087 0 0 0 .011-.009c20.884 4.632 40.3 13.211 57.445 24.915 9.483 39.298 4.115 101.986-15.183 165.765zM476.957 121.6c-28.412 20.541-49.688 50.479-59.364 85.306-7.437-28.85-22.275-54.687-42.341-75.34 3.67 41.76-2.99 95.518-19.681 150.683-15.688 51.849-38.192 98.439-63.505 131.567 61.22-13.596 109.835-61.072 125.527-121.944 9.677 34.828 30.953 64.765 59.364 85.307C491.601 387.766 512 376.97 512 358.798V139.979c0-18.171-20.399-28.968-35.043-18.379z""")
            .shift(Offset(width, height)),
        Paint()..color = const Color(0xfffc765b));

    canvas.drawPath(
        parseSvgPathData(
                """M256 81.017c1.172 0 2.341.013 3.506.038 12.566 29.747 19.527 62.482 19.527 96.858 0 89.121-46.748 167.224-116.856 210.756-32.952-22.62-57.463-56.818-67.769-96.797-9.677 34.827-30.953 64.765-59.364 85.306C20.399 387.765 0 376.97 0 358.798V139.979c0-18.172 20.399-28.968 35.043-18.38 28.412 20.541 49.688 50.479 59.364 85.306C113.077 134.484 178.345 81.017 256 81.017z""")
            .shift(Offset(width, height)),
        Paint()..color = const Color(0xffff8f73));

    canvas.drawPath(
        parseSvgPathData(
                """M114.178 338.246a168.15 168.15 0 0 1-19.77-46.375c-6.707 24.142-18.993 45.931-35.361 63.872A177.53 177.53 0 0 1 0 354.311V139.979c0-18.172 20.399-28.968 35.043-18.38 28.412 20.541 49.688 50.479 59.364 85.306 13.158-51.046 49.47-92.673 96.952-112.8 13.112 25.022 20.547 53.536 20.547 83.807.001 70.037-39.746 130.705-97.728 160.334z""")
            .shift(Offset(width, height)),
        Paint()..color = const Color(0xffffa583));

    canvas.drawPath(
        parseSvgPathData(
                """M73.645 260.671c14.454 0 25.229 13.785 21.613 27.97-9.23 36.205-30.928 67.362-60.215 88.536C20.399 387.765 0 376.97 0 358.798V139.979c0-18.172 20.399-28.968 35.043-18.38 29.286 21.173 50.984 52.331 60.215 88.537 3.616 14.186-7.159 27.97-21.613 27.97H56.087c-5.959 0-11.187 4.556-11.544 10.586-.388 6.547 4.735 11.98 11.109 11.98h17.992v-.001zM512 139.979v218.819c0 18.172-20.399 28.968-35.043 18.38-29.285-21.173-50.984-52.331-60.215-88.536-3.616-14.186 7.159-27.97 21.613-27.97h17.992c6.392 0 11.526-5.462 11.106-12.033-.383-5.997-5.56-10.532-11.488-10.532h-17.612c-14.454 0-25.229-13.785-21.613-27.97 9.23-36.206 30.928-67.364 60.215-88.537 14.646-10.588 35.045.208 35.045 18.379z""")
            .shift(Offset(width, height)),
        Paint()..color = const Color(0xffff8f73));
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
      alignment: Alignment.center,
      child: CustomPaint(
        painter: CandyPainter(size),
      ),
    );
  }
}
