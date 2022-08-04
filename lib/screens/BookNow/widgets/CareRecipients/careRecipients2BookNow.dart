import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/careRecipientsProvider.dart';
import 'careRecipients3BookNow.dart';

class CareRecipients2BookNow extends StatefulWidget {
  static const routeName = '/careRecipients2BookNow-screen';

  @override
  _CareRecipientsAeaBookNowState createState() =>
      _CareRecipientsAeaBookNowState();
}

class _CareRecipientsAeaBookNowState extends State<CareRecipients2BookNow> {
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
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.1 * deviceSize.height),
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
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: 16),
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
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica_Bold',
                            fontSize: 16),
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
                    Navigator.of(context)
                        .pushNamed(CareRecipients3BookNow.routeName);
                  },
                  child: Text("Next"),
                ),
              ),
            ],
          )),
    );
  }
}
