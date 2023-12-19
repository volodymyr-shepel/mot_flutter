import 'package:flutter/material.dart';
import 'package:mot/components/custom_text_form_field.dart';
import 'package:mot/screens/sign_in/sign_in_success_screen.dart';
import '../../../constants.dart';
import '../../../helper/keyboard.dart';
import '../../forgot_password/forgot_password_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  // Commenting out the error handling related variables


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
          const SizedBox(height: 20),
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
          const SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Commenting out the FormError widget
          // FormError(errors: errors),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, SignInSuccessScreen.routeName);
              }
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}
