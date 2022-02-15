import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordInputText extends StatelessWidget {
  final String hintText;

  const PasswordInputText({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 320,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          suffixIconConstraints: BoxConstraints(
            minWidth: 20,
            minHeight: 20,
          ),
          suffixIcon: SvgPicture.asset ('assets/svgimages/eye-invisible.svg',),
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

