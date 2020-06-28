import 'package:flutter/material.dart';
import 'package:loan_calculator/models/transactionsmodel.dart';
import 'package:loan_calculator/utils/colors.dart';
import 'package:loan_calculator/utils/responsive.dart';

Widget transactionList(BuildContext context, Transactions transaction) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      height: screenHeight(context, 0.14),
      width: screenWidth(context, 1),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: UiColors.color8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: transaction.outcome == 'Pending'
                    ? UiColors.color7
                    : UiColors.color6,
              ),
              child: Icon(
                transaction.icon,
                color: transaction.outcome == 'Pending'
                    ? UiColors.color4
                    : UiColors.color5,
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.purpose,
                    style: TextStyle(
                      color: UiColors.color1,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    transaction.remarks,
                    style: TextStyle(color: UiColors.color1),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  Text(
                    '\$${transaction.amount.toString()}',
                    style: TextStyle(
                      color: UiColors.color1,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    transaction.outcome,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: transaction.outcome == 'Pending'
                          ? UiColors.color4
                          : UiColors.color5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
