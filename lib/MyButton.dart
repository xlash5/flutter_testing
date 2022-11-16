import 'package:flutter/material.dart';
import 'EmailFieldValidator.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required TextEditingController emailController,
    required String text,
  })  : _emailController = emailController,
        _text = text,
        super(key: key);

  final TextEditingController _emailController;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: () {
          if (EmailFieldValidator.validate(_emailController.text) == null) {
            print('Email is valid');
          } else {
            print('Email is not valid');
          }
        },
        child: Text(_text),
      ),
    );
  }
}
