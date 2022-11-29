import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

Gender selectedGender = Gender.male;

class GenderBoxes extends StatefulWidget {
  const GenderBoxes({super.key});

  @override
  State<GenderBoxes> createState() => _GenderBoxesState();
}

class _GenderBoxesState extends State<GenderBoxes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 5, 5),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.white
                      : Colors.grey.shade900,
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              child: GenderLayout(
                genderIcon: Icons.male_rounded,
                genderText: 'Male',
                color: (selectedGender == Gender.male
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).primaryColor),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(5, 10, 10, 5),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.white
                      : Colors.grey.shade900,
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              child: GenderLayout(
                genderIcon: Icons.female_rounded,
                genderText: 'Female',
                color: (selectedGender == Gender.female
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).iconTheme.color),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// layout of both gender box
class GenderLayout extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;
  final Color? color;
  const GenderLayout(
      {super.key,
      required this.genderIcon,
      required this.genderText,
      this.color});
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            genderIcon,
            size: 80,
            color: color,
          ),
          Text(genderText, style: TextStyle(fontSize: 25, color: color)),
        ],
      ),
    );
  }
}
