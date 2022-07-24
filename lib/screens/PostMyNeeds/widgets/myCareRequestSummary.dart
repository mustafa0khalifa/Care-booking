import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/automaticMatchingOption.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/caregiverPreferences.dart';
import 'NavBar.dart';

class MyCareRequestSummary extends StatefulWidget {
  static const routeName = '/myCareRequestSummary-screen';

  @override
  _MyCareRequestSummaryState createState() => _MyCareRequestSummaryState();
}

class _MyCareRequestSummaryState extends State<MyCareRequestSummary> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavBar(),
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
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
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
                          'Needed a {gender/null} {a caregiver/Qualification/Qualification 1 or a Qualification 2..} to provide {Care Category} for {age}-year-old {gender} and {age}-year-old {gender} in {location} {starting/on} {xx/xx/xxxx} at {xx:xx AM/PM}',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Feel free to add any additional information about your care needs',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
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
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AutomaticMatchingOption.routeName);
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
