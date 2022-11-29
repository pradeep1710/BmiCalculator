import 'package:flutter/material.dart';

int inFeet = 5;
int inInc = 7;

class HeightBox extends StatefulWidget {
  const HeightBox({super.key});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  final feetUnit = 'Ft';
  final incUnit = 'inc';

  // increament
  increment(height) {
    setState(() {
      if (height == feetUnit) {
        if (inFeet < 8) inFeet++;
      } else if (height == incUnit) {
        if (inInc < 12) inInc++;
      }
    });
  }

  // decrement
  void decrement(heightUnit) {
    setState(() {
      if (heightUnit == feetUnit) {
        if (inFeet > 1) inFeet--;
      } else if (heightUnit == incUnit) {
        if (inInc > 0) inInc--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentTheme = MediaQuery.of(context).platformBrightness;
    return Row(
      children: [
        Expanded(
          //main box
          child: Container(
            height: double.infinity,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: currentTheme == Brightness.light
                    ? Colors.white
                    : Colors.grey.shade900),
            child: FittedBox(
              child: Column(
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(fontSize: 25),
                  ),
                  // feet and height container
                  Row(
                    children: [
                      Container(
                          height: 175,
                          width: 135,
                          margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: currentTheme == Brightness.light
                                  ? Colors.grey.shade200
                                  : const Color.fromARGB(150, 66, 66, 66)),
                          child: HeightContainerLayout(
                            height: inFeet,
                            heightUnit: feetUnit,
                            increment: increment,
                            decrement: decrement,
                          )),
                      Container(
                          height: 175,
                          width: 135,
                          margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: currentTheme == Brightness.light
                                  ? Colors.grey.shade200
                                  : const Color.fromARGB(150, 66, 66, 66)),
                          child: HeightContainerLayout(
                            height: inInc,
                            heightUnit: incUnit,
                            increment: increment,
                            decrement: decrement,
                          )),
                    ],
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

// layout for height container
class HeightContainerLayout extends StatelessWidget {
  final int height;
  final String heightUnit;
  final void Function(String) increment;
  final void Function(String) decrement;
  const HeightContainerLayout({
    super.key,
    required this.height,
    required this.heightUnit,
    required this.increment,
    required this.decrement,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: height.toString(),
                  style: TextStyle(
                      fontSize: 60,
                      color: Theme.of(context).textTheme.bodyMedium!.color)),
              TextSpan(
                  text: heightUnit,
                  style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).textTheme.bodyMedium!.color))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: IconButton(
                  onPressed: () {
                    increment(heightUnit);
                  },
                  icon: const Icon(Icons.add_rounded,color: Colors.white,)),
            ),
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: IconButton(
                  onPressed: () {
                    decrement(heightUnit);
                  },
                  icon: const Icon(Icons.remove_rounded,color: Colors.white,)),
            ),

            // GestureDetector(
            //   onTap: () {
            //     increment(heightUnit);
            //   },
            //   child: CircleAvatar(
            //     backgroundColor: Theme.of(context).colorScheme.primary,
            //     child: const Icon(
            //       Icons.add_rounded,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: () {
            //     decrement(heightUnit);
            //   },
            //   child: CircleAvatar(
            //     backgroundColor: Theme.of(context).colorScheme.primary,
            //     child: const Icon(
            //       Icons.remove_rounded,
            //       color: Colors.white,
            //     ),
            //   ),
            // )
          ],
        )
      ],
    );
  }
}
