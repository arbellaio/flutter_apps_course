import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var p1 = Person();
    p1.name = 'Max';
    p1.age = 30;
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}

class Person {
  String? name;
  int? age;

  String inputName2 = '';
  int inputAge2 = 0;
  int number = 0;

//Shorter Version of constructor this will take values in constructor and pass to class variables
  Person({this.name, this.age});

// //Optional / Nullable parameters
//   Person({String? inputName, int? inputAge}) {
//     name = inputName;
//     age = inputAge;
//   }

  // Person({String inputName2, int inputAge2, int number}) {
  //   this.inputName2 = inputName2;
  //   age = inputAge;
  // }
}
