import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  const BottomButton({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => const ResultPage()));
        },
        child: FittedBox(
            child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 25),
                ))),
      ),
    );
  }
}
