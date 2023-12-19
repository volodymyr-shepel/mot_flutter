import 'package:flutter/material.dart';
import 'package:mot/screens/complete_profile/complete_profile_screen.dart';
import '../../../components/custom_text_form_field.dart';
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
  String? confirmPassword;
  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
      
          CustomTextFormField(
            obscureText: false,
          labelText: "Email",
          hintText: "Enter your email",
          keyboardType: TextInputType.emailAddress, // Set the keyboard type
          onSaved: (newValue) => email = newValue,
          validator: (value) {
            if (value!.isEmpty || !emailValidatorRegExp.hasMatch(value)) {
              return "Invalid Email";
            }
            return null;
          },
        ),
          const SizedBox(height: 16),
          CustomTextFormField(
        labelText: "Password",
        hintText: "Enter your password",
        keyboardType: TextInputType.text,
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
      ),
      const SizedBox(height: 16),
          CustomTextFormField(
        labelText: "Confirm password",
        hintText: "Re-enter your password",
        keyboardType: TextInputType.text,
        obscureText: true,
        onSaved: (newValue) => confirmPassword = newValue,
        validator: (value) {
          if (value!.isEmpty) {
            return "Password can not be empty";
          } else if (password != null && password != value) {
            return "Passwords do not match";
          }
          return null;
          },

      ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, CompleteProfileScreen.routeName); 
              }
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}
