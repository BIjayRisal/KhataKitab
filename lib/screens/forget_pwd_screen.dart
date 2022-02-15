import 'package:flutter/material.dart';
import 'package:khata/screens/signup_screen.dart';
import 'package:khata/widgets/app_buttons.dart';
import 'package:khata/widgets/input_text.dart';
import 'package:khata/widgets/khataKitabText.dart';
import 'package:khata/widgets/pwd_input_text.dart';

class ForgetPwd extends StatelessWidget {
  const ForgetPwd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.deepPurple,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),

      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: KhataKitabText(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                "Reset Password",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          SizedBox(height: 20,),


          SizedBox(height: 50,),
          InputText(hintText: "Email"),
          SizedBox(height: 10,),
          PasswordInputText(hintText: "New Password"),
          SizedBox(height: 10,),
          PasswordInputText(hintText: "Re-type Password"),
          SizedBox(height: 25,),
          AppButtons(text: "Done"),






        ],
      ),
    );
  }
}
