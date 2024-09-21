import 'dart:io';

void main() {
  List<int> HBL_List = [123456789, 4772, 50000];
  num remaing_amt;

  print('---- **** Banking Managment System **** ----');
  print('---- **** Welcome to HBL **** ----');
  ('-------------------------------------------------');

  stdout.write('Please insert your HBL Debit Card  : ');
  int debit_card_codes = int.parse(stdin.readLineSync()!);

  if (debit_card_codes == HBL_List[0]) {
    print('Debit Card Codes Matched Successfully');

    stdout.write('Please insert your HBL PIN  : ');
    int pin = int.parse(stdin.readLineSync()!);

    if (pin == HBL_List[1]) {
      print('PIN Matched Successfully');

      stdout.write('Please Enter Your Withdraw Amount :  ');
      num withdraw_amt = int.parse(stdin.readLineSync()!);

      if (withdraw_amt == 0 && withdraw_amt == '') {
        print('Please Enter Valid Amount for withdraw');
      } else if (withdraw_amt < 500) {
        print('Bank Allows Minimum Amount of 500 for withdraw');
      } else {
        print('Your Transaction is Successful...!!!');
        remaing_amt = HBL_List[2] - withdraw_amt;
        print('Your Remaining Balance is :  $remaing_amt');
      }
    } else {
      print('PIN is not Matched');
    }
  } else {
    print('Please Re-Check your Debit Card Codes');
  }
}
