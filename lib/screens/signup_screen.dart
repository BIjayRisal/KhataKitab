import 'package:flutter/material.dart';
import 'package:khata/screens/login_Screen.dart';
import 'package:khata/widgets/input_text.dart';
import 'package:khata/widgets/khataKitabText.dart';
import 'package:khata/widgets/pwd_input_text.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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

      body: Center(
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: KhataKitabText(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
            SizedBox(height: 20,),
            InputText(hintText: "Proprieter's Full Name"),
            SizedBox(height: 20,),
            InputText(hintText: "Email"),
            SizedBox(height: 20,),
            InputText(hintText: "User Name"),
            SizedBox(height: 20,),
            InputText(hintText: "Phone Number"),
            SizedBox(height: 20,),
            PasswordInputText(hintText: "Password"),
            SizedBox(height: 20,),
            PasswordInputText(hintText: "Confirm Password"),
            SizedBox(height: 20,),

          SizedBox(
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
              child: Text("Sign up", textAlign: TextAlign.center,style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),
              ),

            ),
          ),

            SizedBox(height: 25,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 20,),
                Container(

                    alignment: Alignment.center,
                    child: Text(
                      "Already have an account ?",

                    )),
                SizedBox(width: 2,),
                InkWell(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ],
            )

          ],
        ),
      ),
      ),
    );
  }
}