import 'package:flutter/material.dart';
import 'package:khata/navigation/dashboard_page.dart';
import 'package:khata/widgets/app_buttons.dart';
import 'package:khata/widgets/input_text.dart';
import 'package:khata/widgets/khataKitabText.dart';
class AddCompanyInfo extends StatelessWidget {
  const AddCompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _value = 1;
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
                    "Add Company Information",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
              SizedBox(height: 20,),
              InputText(hintText: "Shop/Company Name"),
              SizedBox(height: 20,),
              InputText(hintText: "Business Category (Service/Product/Both)"),
              SizedBox(height: 0,),
              SizedBox(
                  height: 40,
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio(
                            groupValue:_value,
                            value: 1,
                            onChanged: (value){
                              print("radio $value");
                            },
                          ),
                          SizedBox(width: 5.0,),
                          Text("Supplier"),
                        ],
                      ),

                      Row(
                        children: [
                          Radio(
                            groupValue: _value = 1,
                            value: 2,
                            onChanged: (value){},
                          ),
                          SizedBox(width: 10.0,),
                          Text("Retailer"),
                        ],
                      ),

                    ],
                  ),
                  ),
              SizedBox(height: 0,),
              InputText(hintText: "VAT/PAN Number"),
              SizedBox(height: 0,),
              SizedBox(
                height: 40,
                width: 320,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                          groupValue:_value,
                          value: 1,
                          onChanged: (value){
                            print("radio $value");
                          },
                        ),
                        SizedBox(width: 5.0,),
                        Text("VAT"),
                      ],
                    ),

                    Row(
                      children: [
                        Radio(
                          groupValue: _value = 1,
                          value: 2,
                          onChanged: (value){},
                        ),
                        SizedBox(width: 10.0,),
                        Text("PAN"),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 0,),
              InputText(hintText: "Company Address"),
              SizedBox(height: 20,),
              InputText(hintText: "Company Contact Number"),
              SizedBox(height: 20,),
              InputText(hintText: "Base Currency"),
              SizedBox(height: 20,),
              InputText(hintText: "Fiscal Year"),
              SizedBox(height: 20,),
              AppButtons(text: "Submit"),

              SizedBox(height: 25,),

              InkWell(
                child: Text(
                  "Skip, Submit it later",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
