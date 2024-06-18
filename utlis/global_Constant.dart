
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GlobalConstant{
  GlobalConstant._();
  static final inputFormaterNameField = [FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"))];
  static final inputFormaterPhoneField = [FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))];
  static final inputFormaterEmailField = [FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"))];

  static const ktextSingupHeaderStyle = TextStyle(
    color: Colors.black,
    fontSize: 36,
    fontWeight: FontWeight.w700,);
  static const ktextSingupTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w700,);
  static const ktextSingupStyle = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w700,);
  static final kbuttonSignupStyle = ButtonStyle(
    shape: MaterialStateProperty.all(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))),
      elevation: MaterialStateProperty.all(5),
      backgroundColor: MaterialStateProperty.all(Colors.deepPurple.shade200),
      padding: MaterialStateProperty.all(const EdgeInsets.all(20))
      );
}