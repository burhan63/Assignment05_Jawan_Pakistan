import 'dart:io';

void main() {
  Map<String, dynamic> users = {
    "id": "1",
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "password": "12345",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    }
  };
  int maxattempts = 3;
  int attempts = 0;
  var email;
  var password;

  while (attempts < maxattempts) {
    stdout.write('Please Enter Your Email : ');
    email = stdin.readLineSync();

    stdout.write('Please Enter Your Password : ');
    password = stdin.readLineSync();

    if (email == users['email'] && password == users['password']) {
      print('Login Successfull');
      break;
    } else {
      attempts++;

      if (attempts == maxattempts) {
        print('Your Account has been Locked Due to 3 Bad attempts');
      } else {
        print('Invalid Email or Password , Please Try Again');
      }
    }
  }
}
