import 'package:loan_calculator/widgets/flexibleappbar.dart';

class Dynamicmodel {
  String display(select) {
    if (select == Selected.invest) {
      return 'Invest your money';
    } else if (select == Selected.loan) {
      return 'Apply for a loan';
    } else {
      return 'View your balance';
    }
  }

  String money(select) {
    if (select == Selected.invest) {
      return '100,000';
    } else if (select == Selected.loan) {
      return '35,880';
    } else {
      return '90,000';
    }
  }

  String labeldisplay(select) {
    if (select == Selected.invest) {
      return 'Money you can invest';
    } else if (select == Selected.loan) {
      return 'Unoaid loans';
    } else {
      return 'Account balance';
    }
  }
}
