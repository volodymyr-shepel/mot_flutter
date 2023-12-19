import 'package:flutter/material.dart';
import 'package:mot/screens/forgot_password/forgot_password_success_screen.dart';
import '../../../components/no_account_text.dart';
import '../../../constants.dart';
import '../../../components/custom_text_form_field.dart';

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
          const SizedBox(height: 8),
          //FormError(errors: errors),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, ForgotPasswordSuccessScreen.routeName); 
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
