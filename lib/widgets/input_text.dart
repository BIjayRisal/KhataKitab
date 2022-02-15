import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hintText;
    bool? suffixIcon;
  InputText({Key? key, required this.hintText, this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 320,
      child: TextFormField(

        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
            ),
            // suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),

      ),
    );
  }
}
