import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khata/navigation/dashboard_page.dart';
import 'package:khata/navigation/navpage.dart';
import 'package:khata/screens/forget_pwd_screen.dart';
import 'package:khata/screens/signup_screen.dart';
import 'package:khata/widgets/app_buttons.dart';
import 'package:khata/widgets/input_text.dart';
import 'package:khata/widgets/khataKitabText.dart';
import 'package:khata/widgets/pwd_input_text.dart';

import '../otp/otp_screen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                height: 60,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40,width: 150,
                    child:  ElevatedButton.icon(
                      icon: Icon(
                        Icons.person_rounded,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      label: Text('Admin'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.deepPurple,

                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7))
                      ),
                    ) ,),

                  SizedBox(height: 40,width: 150,
                    child:   ElevatedButton.icon(
                      icon: Icon(
                        Icons.person_rounded,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      label: Text('User'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black,
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7))
                      ),
                    ) ,
                  ),

                ],
              ),
              SizedBox(height: 50,),
              InputText(hintText: "User name"),
              SizedBox(height: 10,),
              PasswordInputText(hintText: "Password"),
              SizedBox(height: 25,),
          SizedBox(
            height: 35,
            width: 320,
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.deepPurple,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));

              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((7.0)),
              ),
              child: Text("Log in", textAlign: TextAlign.center,style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),
              ),

            ),
          ),

              SizedBox(height: 70,),
              InkWell(
                child: Text(
                  "Register Now",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  SignupScreen()));
                },
              ),
              SizedBox(height: 20,),
              InkWell(
                child:Text("Forget Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPwd()));
                },
              ),

              SizedBox(height: 20,),

              SizedBox(height:100,),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "By logging in you will accept our Privacy Policy and  T&C",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10),
                  )),


            ],
          ),
        ),
      ),
    );
  }
}
