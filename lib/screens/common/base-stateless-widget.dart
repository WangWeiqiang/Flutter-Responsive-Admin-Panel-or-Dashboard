import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseStateLessWidget extends StatelessWidget {
  BaseStateLessWidget({super.key});
  late ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    theme = Get.theme;
    return this as StatelessWidget; // Replace with your widget as needed
  }
}
