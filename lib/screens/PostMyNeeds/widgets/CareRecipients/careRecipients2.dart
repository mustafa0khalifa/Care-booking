import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/careCategoryProvider.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/careRecipientsProvider.dart';
import '../NavBar.dart';
import 'careRecipients3.dart';

class CareRecipients2 extends StatefulWidget {
  static const routeName = '/careRecipients2-screen';

  @override
  _CareRecipientsAeaState createState() => _CareRecipientsAeaState();
}

class _CareRecipientsAeaState extends State<CareRecipients2> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    var consumer = Consumer<CareRecipientsProvider>(
      builder: (_, foo, __) => FlutterSwitch(
        width: deviceSize.width * 0.11,
        height: deviceSize.height * 0.025,
        value: CareRecipientsProvider.isPregant,
        activeColor: Colors.green,
        borderRadius: 30.0,
        showOnOff: false,
        onToggle: (val) {
          foo.changePregant();
        },
      ),
    );
    return Scaffold(
      drawer: NavBar(),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black87)),
                child: Container(
                  margin: EdgeInsets.all(deviceSize.width * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I am Pregnant',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000)),
                          ),
                          consumer,
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      Text(
                        'Would you like to share with us your due date?',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000)),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 35,
                            width: deviceSize.width * 0.6,
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.blue.shade900, fontSize: 11),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  hintText: ' / /  /',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                      fontSize: 11)),
                            ),
                          ),
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.date_range_outlined))
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(deviceSize.height * 0.05),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Colors.greenAccent //elevated btton background color
                      ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(CareRecipients3.routeName);
                  },
                  child: Text("Next"),
                ),
              ),
            ],
          )),
    );
  }
}
