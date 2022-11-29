import 'package:bmi_calculator/models/calculation.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Center(
            child: Text('Your Result :',
                style: Theme.of(context).textTheme.headline4),
          )),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 5, 5),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? Colors.white
                    : Colors.grey.shade900,
              ),
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                      child: Column(children: [
                        Text(
                          Calculation.bmiStatus,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Calculation.bmiStatusColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: Calculation.bmi().toStringAsFixed(1),
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            const TextSpan(text: ' BMI')
                          ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Normal BMI range :\n18.5 to 24.5/25 kg/m²',
                          textAlign: TextAlign.center,
                        ),
                      ]),
                    ),
                    Text(
                      Calculation.bmiAdvise,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
