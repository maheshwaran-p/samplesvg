import 'package:flutter/material.dart';
import 'package:samplesvg/svgs/candy.dart';
import 'package:samplesvg/svgs/caughview.dart';
import 'package:samplesvg/svgs/gun.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SVG2FLUTTER DEMO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [GunView(), CoughView(), CandyView()]))),
    ));
  }
}

class GunView extends StatelessWidget {
  const GunView({super.key});

  static Widget widget(String x) => const GunView();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const GunViewWidget(size: 37), // specify the svg size here .
    );
  }
}

class CoughView extends StatelessWidget {
  const CoughView({super.key});

  static Widget widget(String x) => const CoughView();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const CoughWidget(size: 42),
    );
  }
}

class CandyView extends StatelessWidget {
  const CandyView({super.key});

  static Widget widget(String x) => const CandyView();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const CandyWidget(size: 47),
    );
  }
}
