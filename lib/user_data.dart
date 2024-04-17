import 'package:flutter/material.dart';

class UserData extends ChangeNotifier {
  String? username;
  String? password;
  List<Person> persons = [];

  void setUsername(String value) {
    username = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  void addPerson({required String name, required String email, required String address}) {
    persons.add(Person(name: name, email: email, address: address));
    notifyListeners();
  }
}

class Person {
  final String name;
  final String email;
  final String address;

  Person({required this.name, required this.email, required this.address});
}
