import 'package:flutter/material.dart';

class OtpTextForm extends StatelessWidget {
  const OtpTextForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      obscureText: true,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey)
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey)
        ),
      ),
    );
  }
}
