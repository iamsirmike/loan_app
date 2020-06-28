import 'package:flutter/material.dart';
import 'package:loan_calculator/models/dynamicmodel.dart';
import 'package:loan_calculator/utils/colors.dart';
import 'package:loan_calculator/utils/responsive.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:loan_calculator/widgets/bottombuttons.dart';
import 'package:loan_calculator/widgets/topbuttons.dart';

enum Action { transfer, balanace }
enum Selected { wallet, invest, loan }

class MyFlexibleAppBar extends StatefulWidget {
  const MyFlexibleAppBar();

  @override
  _MyFlexibleAppBarState createState() => _MyFlexibleAppBarState();
}

class _MyFlexibleAppBarState extends State<MyFlexibleAppBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uiupdate();
  }

  Action toggle = Action.transfer;
  Selected select = Selected.wallet;
  String text;
  String money;
  String labeldisplay;
  Dynamicmodel btext = Dynamicmodel();
  
  void uiupdate() {
    setState(() {
      text = btext.display(select);
      money = btext.money(select);
      labeldisplay = btext.labeldisplay(select);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: UiColors.color1,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2.0, color: UiColors.color3),
            ),
            child: Icon(
              FontAwesome.th_large,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Row(
              children: [
                TopButton(
                  text: 'Transfer',
                  txtcolor: toggle == Action.transfer
                      ? UiColors.color1
                      : UiColors.color2,
                  bgcolor: toggle == Action.transfer
                      ? UiColors.color2
                      : UiColors.color3,
                  onpress: () {
                    setState(() {
                      toggle = Action.transfer;
                    });
                  },
                ),
                Spacer(),
                TopButton(
                  text: 'Balance',
                  txtcolor: toggle == Action.balanace
                      ? UiColors.color1
                      : UiColors.color2,
                  bgcolor: toggle == Action.balanace
                      ? UiColors.color2
                      : UiColors.color3,
                  onpress: () {
                    setState(() {
                      toggle = Action.balanace;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            labeldisplay,
            style: TextStyle(color: UiColors.color2),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '\$$money',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55.0),
            child: Row(
              children: [
                BottomButtons(
                  label: 'Wallet',
                  onpress: () {
                    setState(
                      () {
                        select = Selected.wallet;
                        uiupdate();
                      },
                    );
                  },
                  color: select == Selected.wallet
                      ? Colors.white54
                      : Colors.white10,
                  iconcolor:
                      select == Selected.wallet ? Colors.white : Colors.white10,
                ),
                Spacer(),
                BottomButtons(
                  label: 'Invest',
                  onpress: () {
                    setState(
                      () {
                        select = Selected.invest;
                        uiupdate();
                      },
                    );
                  },
                  color: select == Selected.invest
                      ? Colors.white54
                      : Colors.white10,
                  iconcolor:
                      select == Selected.invest ? Colors.white : Colors.white10,
                ),
                Spacer(),
                BottomButtons(
                  label: 'Loan',
                  onpress: () {
                    setState(
                      () {
                        select = Selected.loan;
                        uiupdate();
                      },
                    );
                  },
                  color:
                      select == Selected.loan ? Colors.white54 : Colors.white10,
                  iconcolor:
                      select == Selected.loan ? Colors.white : Colors.white10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: screenHeight(context, 0.08),
              width: screenWidth(context, 1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white24),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(
                  FontAwesome.qrcode,
                  color: Colors.white70,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Scan QR Code and Nearby Friends',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}



