import 'package:cred/util/custom_colors.dart';
import 'package:flutter/material.dart';

class HelperClass {
  List<Color> categoryIconColor = [
    CustomColors.lightBlue,
    CustomColors.mainOrange,
    CustomColors.mainPurple,
  ];
  List<String> dateTitle = [
    'Recent: Chest & Legs',
    'Previous: Chest & Legs',
    'Last Week: Chest & Legs',
  ];
  List<String> dateSibTitle = [
    '8 Exercise',
    '12 exercise',
    '37 Exercise',
  ];
  List<String> datetime = [
    '17',
    '16',
    '10',
  ];
  List<String> categoryTitle = ['Burned', 'Lifted', 'Training'];
  List<IconData> categoryIcon = [
    Icons.bolt,
    Icons.h_mobiledata,
    Icons.schedule
  ];
  List<String> categorysubTitle = ['12.6k', '270k', '13'];
  List<String> categorysubAppend = ['cal', 'kg', 'weeks'];

  List<Color> categorybackColor = [
    CustomColors.mainOrange.withOpacity(0.08),
    CustomColors.mainPurple.withOpacity(0.08),
    CustomColors.lightBlue.withOpacity(0.1),
  ];
}
