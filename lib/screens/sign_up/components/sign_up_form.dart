import 'package:flutter/material.dart';
import 'package:mot/screens/welcome/welcome_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
//import '../../complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => firstName = newValue,
            validator: (value) {
              if (value!.isEmpty) {
                return "First name can not be empty";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "First Name",
              hintText: "Enter your first name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(29.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(29.0),
              ),
              hintStyle: TextStyle(color: Color(0xFF4E4F51)),
              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            onSaved: (newValue) => lastName = newValue,
            validator: (value) {
              if (value!.isEmpty) {
                return "First name can not be empty";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Last Name",
              hintText: "Enter your last name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              
            
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(29.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(29.0),
              ),
              hintStyle: TextStyle(color: Color(0xFF4E4F51)),
              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
            ),
          ),
          const SizedBox(height: 16),

          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            validator: (value) {
              if (value!.isEmpty || !emailValidatorRegExp.hasMatch(value)) {
                return "Invalid Email";
              }
              
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
  
              floatingLabelBehavior: FloatingLabelBehavior.always,
              
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(29.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(29.0),
              ),
              hintStyle: TextStyle(color: Color(0xFF4E4F51)),
              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => password = newValue,
            validator: (value) {
              if (value!.isEmpty) {
                return "Password can not be empty";
              } else if (value.length < 8) {
                return "Invalid Password";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
            
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(29.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(29.0),
              ),
              hintStyle: TextStyle(color: Color(0xFF4E4F51)),
              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                Navigator.pushReplacementNamed(context, WelcomeScreen.routeName); // TODO change to complete profile screen
              }
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}
