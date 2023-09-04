import 'package:flutter/material.dart';

class Myconstant {
  static Color primary = Color.fromARGB(255, 67, 234, 193); // Set the alpha value to 255
  static Color success = Color.fromARGB(255, 41, 215, 79); // Set the alpha value to 255
  static Color warning = Color.fromARGB(255, 0, 191, 255); // Set the alpha value to 255
  static Color danger = Color.fromARGB(255, 255, 0, 0); // Set the alpha value to 255
  static Color info = Color.fromARGB(255, 255, 255, 255); // Set the alpha value to 255


TextStyle h1Style() {
  return TextStyle(
    fontFamily: "Raleway",
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.bold, // Corrected syntax: use FontWeight.bold
  );
}

TextStyle h2Style() {
  return TextStyle(
    fontFamily: "Raleway",
    fontSize: 15,
    color: Colors.blue,
    fontWeight: FontWeight.bold, // Corrected syntax: use FontWeight.bold
  );
}

}