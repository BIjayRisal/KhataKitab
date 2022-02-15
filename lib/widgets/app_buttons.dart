import 'package:flutter/material.dart';
class AppButtons extends StatelessWidget {
  final String text;


  const AppButtons({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      height: 35,
      width: 320,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        color: Colors.deepPurple,
        onPressed: (){
        },
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular((7.0)),
        ),
        child: Text(text, textAlign: TextAlign.center,style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold,

        ),
        ),

      ),
    );
  }
}
