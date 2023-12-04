import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF8138BF);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kTextColor = Colors.white;
const kAnimationDuration = Duration(milliseconds: 200);
const kPrimaryDarkColor = Color(0xFF222325);
// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Please Enter your email";

const String kInvalidEmailError = "Please Enter Valid Email";

const String kPassNullError = "Please Enter your password";

const String kShortPassError = "Password is too short";

const String kMatchPassError = "Passwords don't match";

const String kNamelNullError = "Please Enter your name";

const String kPhoneNumberNullError = "Please Enter your phone number";

const String kAddressNullError = "Please Enter your address";


const headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);