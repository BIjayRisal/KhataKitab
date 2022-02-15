import 'package:flutter/material.dart';
import 'package:khata/otp/otp_header.dart';
import 'package:khata/otp/otp_lowert.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),

      ),
      body: Container(
        width: double.infinity,
        decoration:  BoxDecoration(
          color: Colors.deepPurple
          //edited
          ,
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Header(),
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                    )
                ),
                child: OtpLower(),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
