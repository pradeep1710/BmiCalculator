import 'package:flutter/material.dart';

double weight = 60;

class WeightBox extends StatefulWidget {
  const WeightBox({super.key});

  @override
  State<WeightBox> createState() => _WeightBoxState();
}

class _WeightBoxState extends State<WeightBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: double.infinity,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.white
                      : Colors.grey.shade900,
            ),
            child: FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Weight', style: TextStyle(fontSize: 25)),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: weight.toStringAsFixed(0).toString(),
                            style: TextStyle(
                                fontSize: 70,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color)),
                        TextSpan(
                            text: 'Kg',
                            style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Slider(
                        min: 10,
                        max: 150,
                        divisions: 140,
                        value: weight,
                        onChanged: (value) {
                          setState(() {
                            weight = value;
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
