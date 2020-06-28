import 'package:flutter/material.dart';
import 'package:loan_calculator/models/transactionsmodel.dart';
import 'package:loan_calculator/utils/colors.dart';
import 'package:loan_calculator/utils/responsive.dart';
import 'package:loan_calculator/widgets/flexibleappbar.dart';
import 'package:loan_calculator/widgets/transactionlist.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.color1,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              // pinned: true,
              expandedHeight: screenHeight(context, 0.72),
              flexibleSpace: const FlexibleSpaceBar(
                background: MyFlexibleAppBar(),
              ),
              backgroundColor: UiColors.color2,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: UiColors.color2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 150.0, vertical: 10),
                          child: Container(
                            height: 3,
                            color: Colors.grey[300],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 2),
                          child: Row(
                            children: [
                              Text(
                                'History',
                                style: TextStyle(
                                  color: UiColors.color1,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                // radius: 30.0,
                                backgroundColor: UiColors.color1,
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ...transaction
                            .map((index) => transactionList(context, index))
                            .toList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
