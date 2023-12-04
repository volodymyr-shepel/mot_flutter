import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../constants.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();

  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            validator: (value) {
              if (value!.isEmpty) {
                return "Email can not be empty";
              }
              else if(!emailValidatorRegExp.hasMatch(value)){
                return "Invalid email";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: const TextStyle(color: Color(0xFF4E4F51)),
              enabledBorder: OutlineInputBorder(
                borderSide:  const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(29.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(29.0),
              ),
              
            ),
          ),
          const SizedBox(height: 8),
          //FormError(errors: errors),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Do what you want to do
              }
            },
            child: const Text("Continue"),
          ),
          const SizedBox(height: 16),
          const NoAccountText(),
        ],
      ),
    );
  }
}
