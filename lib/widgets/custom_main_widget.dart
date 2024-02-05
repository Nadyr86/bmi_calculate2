import 'package:flutter/material.dart';

class CustomMainWidget extends StatelessWidget {
  const CustomMainWidget({
    required this.buttonText,
    required this.onPressed, super.key,
  });

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      child: MaterialButton(
        onPressed: onPressed,
        color: Colors.redAccent,
        height: 45,
        minWidth: double.infinity,
        child: Text(
          buttonText.toUpperCase(),
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
