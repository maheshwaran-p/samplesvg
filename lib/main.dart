import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:samplesvg/svgfile.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            //     child: Row(
            //   // children: [
            //   //   SvgPicture.asset('asset/key.svg', width: 45, height: 45.2),
            //   //   SvgPicture.asset('asset/key.svg', width: 45, height: 45.2),
            //   //   SvgPicture.asset('asset/key.svg', width: 45, height: 45.2),
            //   //   SvgPicture.asset('asset/key.svg', width: 45, height: 45.2),
            //   //   SvgPicture.asset('asset/key.svg', width: 45, height: 45.2),
            //   //   SvgPicture.asset('asset/key.svg', width: 45, height: 45.2),
            //   //   SvgPicture.asset('asset/key.svg', width: 45, height: 45.2),
            //   //   SvgPicture.asset('asset/key.svg', width: 45, height: 45.2),
            //   // ],
            //   children: [
            //     CustomPaint(
            //       painter: CandyPainter(30.0),
            //       size: Size.zero,
            //     ),
            //   ],
            // )
            // child: SvgPicture.asset('asset/key.svg', width: 10, height: 10.2),

            //  onTap: () => print('tap'),
            child: CustomPaint(
              painter: CandyPainter(40),
              size: Size.zero,
            ),
            // child: Container()
          )),
    ));
  }
}

// class FilledPathPainter extends CustomPainter {
//   const FilledPathPainter({
//     @required this.path,
//     @required this.color,
//   });

//   final Path path;
//   final Color color;

//   @override
//   bool shouldRepaint(FilledPathPainter oldDelegate) =>
//       oldDelegate.path != path || oldDelegate.color != color;

//   @override
//   void paint(Canvas canvas, Size size) {
//     canvas.drawPath(
//       path,
//       Paint()
//         ..color = color
//         ..style = PaintingStyle.fill,
//     );
//   }

//   @override
//   bool hitTest(Offset position) => path.contains(position);
// }
