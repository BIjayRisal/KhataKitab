import 'package:flutter/material.dart';
import 'package:khata/widgets/khataKitabText.dart';
class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
             ListTile(title: KhataKitabText(fontSize: 25,),),
              SizedBox(height: 30,),
              ListTile(title: Text("Dashboard"),),
              ListTile(title: Text("Comapany Branches"),),
              ExpansionTile(title: Text("Banking"),
                children: <Widget>[
                  ListTile
                    (title: Text('Bank/Co-operative'),),
                  ListTile
                    (title: Text('Cheque Alerts '),),
                  ListTile
                    (title: Text('All Transactions'),),
                ],
              ),
              ListTile(title: Text("Day Book"),),
              // Divider(color: Colors.deepPurple,thickness: 1,),
              ExpansionTile(title: Text("Items"),
                children: <Widget>[
                  ListTile
                    (title: Text('Item Category'),),
                  ListTile
                    (title: Text('Items'),),
                  ListTile
                    (title: Text('Item Adjustment'),),
                ],
              ),
              // Divider(color: Colors.deepPurple,thickness: 1,),
              ExpansionTile(title: Text("Sales/Income"),
                children: <Widget>[
                  ListTile
                    (title: Text('Customers'),),
                  ListTile
                    (title: Text('Invoice'),),
                  ListTile
                    (title: Text('Payment Received'),),
                  ListTile
                    (title: Text('Credits'),),
                ],
              ),
              // Divider(color: Colors.deepPurple,thickness: 1,),
              ExpansionTile(title: Text("Purchases"),
                children: <Widget>[
                  ListTile
                    (title: Text('Vendors'),),
                  ListTile
                    (title: Text('Bills'),),
                  ListTile
                    (title: Text('Expenses'),),
                  ListTile
                    (title: Text('Payment Made'),),
                  ListTile
                    (title: Text('Vendor Credits'),),
                ],
              ),
             
              ListTile
                (title: Text('Reports'),),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
