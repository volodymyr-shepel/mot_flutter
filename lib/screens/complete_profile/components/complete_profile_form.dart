import 'package:flutter/material.dart';
import 'package:mot/components/custom_text_form_field.dart';
import 'package:mot/screens/sign_up/sign_up_success_screen.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
              CustomTextFormField(
            labelText: "First Name",
            hintText: "Enter your first name",
            onSaved: (newValue) => firstName = newValue,
            obscureText: false,
            validator: (value) {
              if (value!.isEmpty) {
                return "First name can not be empty";
              }
              return null;
            },
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            obscureText: false,
            labelText: "Last Name",
            hintText: "Enter your last name",
            onSaved: (newValue) => lastName = newValue,
            validator: (value) {
              if (value!.isEmpty) {
                return "Last name can not be empty";
              }
              return null;
            },
            keyboardType: TextInputType.text,
      ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, SignUpSuccessScreen.routeName);
              }
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}
