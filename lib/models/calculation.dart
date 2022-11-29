import 'package:bmi_calculator/elements/genderboxes.dart';
import 'package:bmi_calculator/elements/heightbox.dart';
import 'package:bmi_calculator/elements/weightbox.dart';
import 'package:flutter/material.dart';

class Calculation {
  static double bmi() {
    double inMeter = (((inFeet * 12) + inInc) * 2.54) / 100;
    final bmi = weight / (inMeter * inMeter); // bmi= kg/m²
    return bmi;
  }

  static String get bmiStatus {
    if (selectedGender == Gender.male) {
      if (bmi()< 18.5) {
        return 'UNDER-WEIGHT';
      } else if (bmi() < 24.5) {
        return 'NORMAL';
      } else if (bmi()< 30) {
        return 'OVER-WEIGHT';
      } else {
        return 'OBESE';
      }
    } else {
      if (bmi() < 18.5) {
        return 'UNDER-WEIGHT';
      } else if (bmi() < 25) {
        return 'NORMAL';
      } else if (bmi()< 29) {
        return 'OVER-WEIGHT';
      } else {
        return 'OBESE';
      }
    }
  }

  static Color get bmiStatusColor {
    if (bmiStatus == 'UNDER-WEIGHT') {
      return Colors.orange;
    } else if (bmiStatus == 'NORMAL') {
      return Colors.green;
    } else if (bmiStatus == 'OVER-WEIGHT') {
      return Colors.orange.shade900;
    } else {
      return Colors.red.shade800;
    }
  }

  static String get bmiAdvise {
    if (selectedGender == Gender.male) {
      if (bmi() < 18.5) {
        return 'You are under-weight .\nHave proper diet and do Exercise';
      } else if (bmi() < 24.5) {
        return 'You have a normal body weight.\nGood job!';
      } else {
        return 'You are over-weight.\nPlan your diet and do Exercise  ';
      }
    } else {
      if (bmi() < 18.5) {
        return 'You have a lower than normal body weight.\nTry to eat more and do Exercise';
      } else if (bmi() < 25) {
        return 'You have a normal body weight.\nGood job!';
      } else {
        return 'You have a more than normal body weight.\nTry to do more Exercise';
      }
    }
  }
}
