import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final Function onpress;
  final Color color;
  final Color iconcolor;
  final String label;
  const BottomButtons({
    this.onpress,
    this.color,
    this.label,
    this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
            child: Icon(
              Icons.account_balance_wallet,
              color: iconcolor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}