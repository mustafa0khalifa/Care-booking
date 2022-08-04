import 'package:flutter/material.dart';
import 'caregaverClientRequestBookNow.dart';

class MyCareRequestSummaryBookNow extends StatefulWidget {
  static const routeName = '/myCareRequestSummaryBookNow-screen';

  @override
  _MyCareRequestSummaryBookNowState createState() =>
      _MyCareRequestSummaryBookNowState();
}

class _MyCareRequestSummaryBookNowState
    extends State<MyCareRequestSummaryBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 20),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.black87)),
                      child: Container(
                        margin: EdgeInsets.all(deviceSize.width * 0.03),
                        child: Text(
                          '{construct title based on previous selections}',
                          style: TextStyle(
                              color: Color(0xffcbcbcb),
                              fontFamily: 'Helvetica',
                              fontSize: 16),
                        ),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Feel free to add any additional information about your care needs',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 18),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  child: SizedBox(
                    width: deviceSize.width * 0.8,
                    child: TextField(
                      style:
                          TextStyle(color: Colors.blue.shade900, fontSize: 11),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Color(0xff28306e) //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(CaregaverClientRequestBookNow.routeName);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
