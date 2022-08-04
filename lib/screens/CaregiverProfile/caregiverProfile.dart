import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import 'package:flutter_application_10000/screens/BookNow/bookNow.dart';

class CaregiverProfile extends StatefulWidget {
  static const routeName = '/caregiverProfile-screen';

  @override
  _CaregiverProfileState createState() => _CaregiverProfileState();
}

class _CaregiverProfileState extends State<CaregiverProfile> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    Widget firstInfo() {
      return Column(
        children: [
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.firstName}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.age}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.nationality}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.distance}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.rating}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.providedHoursOfCare}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.clientRef}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.qualifications}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
          SizedBox(
            width: deviceSize.width * 0.6,
            child: Text(
              maxLines: 2,
              "${TestModel.testCaregaverModel.badgesIcons}",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
      );
    }

    Widget buildText(List<String> l) {
      return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: l.length,
          itemBuilder: (context, index) => Text(l[index]));
    }

    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Image.asset(TestModel.testCaregaverModel.imageUrl,
                          fit: BoxFit.cover),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: TextButton(
                            child: Text('Book Now'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(BookNow.routeName);
                            },
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.width * 0.1)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.4,
                              child: TextButton(
                                  child: Text('Message Caregiver'),
                                  onPressed: null),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.4,
                              child: Text(
                                maxLines: 2,
                                'This feature is not available now.',
                                style: TextStyle(
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(255, 146, 22, 13)),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                firstInfo(),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "About Me",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                    width: deviceSize.width * 0.6,
                    child: Text(
                      maxLines: 2,
                      "${TestModel.testCaregaverModel.aboutMe}",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Location",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                    width: deviceSize.width * 0.6,
                    child: Text(
                      maxLines: 2,
                      "${TestModel.testCaregaverModel.location}",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Provided Services",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(
                          TestModel.testCaregaverModel.providedServices)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Additional Services",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(
                          TestModel.testCaregaverModel.additionalServices)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Rating, Reviews and References",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(TestModel
                          .testCaregaverModel.ratingReviewsAndReferences)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Experience",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child:
                          buildText(TestModel.testCaregaverModel.experience)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Qualifications & education",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(TestModel
                          .testCaregaverModel.qualificationsEducation)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Fees",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(TestModel.testCaregaverModel.fees)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Availability",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child:
                          buildText(TestModel.testCaregaverModel.avallabillty)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Availability",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child:
                          buildText(TestModel.testCaregaverModel.avallabillty)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Booked until {End of Last Booking Date}",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "General availability",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(
                          TestModel.testCaregaverModel.generalAvallabillty)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Booked until {End of Last Booking Date}",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Special Remarks",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(
                          TestModel.testCaregaverModel.specialRemarks)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Documents",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(TestModel.testCaregaverModel.documents)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.6,
                  child: Text(
                    maxLines: 2,
                    "Additional Information",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.height * 0.03),
                  child: SizedBox(
                      width: deviceSize.width * 0.6,
                      child: buildText(
                          TestModel.testCaregaverModel.additionalInformation)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.85,
                  child: Text(
                    maxLines: 4,
                    "It is the client’s responsibility to verify any educational credentials that the caregiver has provided. Find A Nurse is NOT responsible for any wrong information or documentation that might submitted by any caregiver.",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
              ],
            ),
          )),
    );
  }
}
