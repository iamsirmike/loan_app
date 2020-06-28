import 'package:flutter/material.dart';

double screenHeight(BuildContext context, double percentage) =>
    MediaQuery.of(context).size.height * percentage;

double screenWidth(BuildContext context, double percentage) =>
    MediaQuery.of(context).size.width * percentage;
