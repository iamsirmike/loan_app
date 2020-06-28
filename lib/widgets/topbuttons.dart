import 'package:flutter/material.dart';
import 'package:loan_calculator/utils/responsive.dart';

class TopButton extends StatelessWidget {
  final String text;
  final Color txtcolor;
  final Color bgcolor;
  final Function onpress;
  const TopButton({
    @required this.text,
    this.txtcolor,
    this.onpress,
    this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: txtcolor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        height: screenHeight(context, 0.065),
        width: screenWidth(context, 0.3),
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
