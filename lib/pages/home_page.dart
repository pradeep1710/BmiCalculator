import 'package:bmi_calculator/elements/bottom_button.dart';
import 'package:bmi_calculator/elements/genderboxes.dart';
import 'package:bmi_calculator/elements/heightbox.dart';
import 'package:bmi_calculator/elements/weightbox.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: const [
          Expanded(flex: 3, child: GenderBoxes()),
          Expanded(flex: 5, child: HeightBox()),
          Expanded(flex: 4, child: WeightBox()),
          Expanded(flex: 1, child: BottomButton(text: 'Calculate'))
        ],
      ),
    );
  }
}
