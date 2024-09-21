import 'dart:io';
import 'dart:math';

void main() {
  Map<String, dynamic> MyMap = {
    "Operation_Area": "Area",
    "Lenght": "56",
    "Breadth": "56",
    "Operation_Radius": "Radius",
    "Circumference": "10",
    "Pi": "3.142",
    "Operation_Qudratic": "Quadratic",
    "B": "50",
    "A": "62",
    "C": "65"
  };

  num area;
  double radius;
  bool run = true;

  while (run) {
    stdout.write('Please Enter your Operation  : ');
    String? operation = stdin.readLineSync();

    if (operation == "Exit") {
      print("Program is Exit...!!!");
      run = false;
      break;
    } else if (operation == MyMap["Operation_Area"]) {
      print('---- **** Area Calculation Program **** ----');
      num lenght = num.parse(MyMap["Lenght"]);
      num breadth = num.parse(MyMap["Breadth"]);
      area = lenght * breadth;
      print('The Area is    :  $area');
    } else if (operation == MyMap["Operation_Radius"]) {
      print('---- **** Radius Calculation Program **** ----');
      num circumference = num.parse(MyMap["Circumference"]);
      num pi = num.parse(MyMap["Pi"]);
      radius = circumference / 2 * pi;
      print('The Radius is :   $radius');
    } else if (operation == MyMap["Operation_Qudratic"]) {
      print('---- **** Quadratic Calculation Program **** ----');
      num A = num.parse(MyMap["A"]);
      num B = num.parse(MyMap["B"]);
      num C = num.parse(MyMap["C"]);
      num discriminant = (B * B) - (4 * A * C);

      if (discriminant >= 0) {
        num root1 = (-B + sqrt(discriminant)) / (2 * A);
        num root2 = (-B - sqrt(discriminant)) / (2 * A);
        print('The roots of the quadratic equation are: $root1 and $root2');
      } else {
        print('The Equation has no real roots...!!!');
      }
    }
  }
}
