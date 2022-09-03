import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/BrowseCaregivers/browseCaregivers.dart';
import 'package:flutter_application_10000/screens/auth/mainAuth.dart';
import 'package:provider/provider.dart';

import '../../providers/bookDashboardProvide.dart';
import '../../providers/myBookingProvider.dart';
import '../ClientNotifications/clientNotifications.dart';
import '../FavoriteCaregivers/favoriteCaregivers.dart';
import '../MyBookings/myBookings.dart';
import '../PostMyNeeds/postMyNeeds.dart';

class BookingsDashboard extends StatefulWidget {
  static const routeName = '/bookingsDashboard-screen';

  MyBookingProvider myBook = MyBookingProvider();

  @override
  _BookingsDashboardState createState() => _BookingsDashboardState();
}

class _BookingsDashboardState extends State<BookingsDashboard> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout_outlined,
              color: Color(0xff28306e),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => AuthScreen()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Bookings Dashboard",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Text('My Bookings',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica-Bold',
                          fontSize: deviceSize.width * 0.055)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<BookDashboardProvide>(
                      builder: (_, foo, __) => InkWell(
                        child: SizedBox(
                          width: deviceSize.width * 0.28,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Image.asset(
                                    width: deviceSize.width * 0.28,
                                    height: deviceSize.width * 0.17,
                                    color: BookDashboardProvide
                                            .clicedPreviousBooking
                                        ? Color(0xff28306e)
                                        : null,
                                    'assets/images/1x/Asset 23.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    child: Center(
                                      child: Text('5',
                                          style: TextStyle(
                                              color: Color(0xff3ab284),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.055)),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.03)),
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    child: Center(
                                      child: Text('Previous Booking',
                                          style: TextStyle(
                                              color: BookDashboardProvide
                                                      .clicedPreviousBooking
                                                  ? Color.fromARGB(
                                                      255, 255, 255, 255)
                                                  : Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.025)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onLongPress: () => {foo.ClicedPreviousBooking()},
                        onTap: () => {
                          widget.myBook
                              .changeStateMyBooking('Previous Bookings'),
                          Navigator.of(context).pushNamed(
                            MyBookings.routeName,
                          )
                        },
                      ),
                    ),
                    Consumer<BookDashboardProvide>(
                      builder: (_, foo, __) => InkWell(
                        child: SizedBox(
                          width: deviceSize.width * 0.28,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Image.asset(
                                    width: deviceSize.width * 0.28,
                                    height: deviceSize.width * 0.17,
                                    color: BookDashboardProvide
                                            .clicedCurrentBooking
                                        ? Color(0xff28306e)
                                        : null,
                                    'assets/images/1x/Asset 23.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    child: Center(
                                      child: Text('2',
                                          style: TextStyle(
                                              color: Color(0xff3ab284),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.055)),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.03)),
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    child: Center(
                                      child: Text('Current Bookings',
                                          style: TextStyle(
                                              color: BookDashboardProvide
                                                      .clicedCurrentBooking
                                                  ? Color.fromARGB(
                                                      255, 255, 255, 255)
                                                  : Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.025)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onLongPress: () => {foo.ClicedCurrentBooking()},
                        onTap: () => {
                          widget.myBook.changeStateMyBooking('Current Booking'),
                          Navigator.of(context).pushNamed(
                            MyBookings.routeName,
                          )
                        },
                      ),
                    ),
                    Consumer<BookDashboardProvide>(
                      builder: (_, foo, __) => InkWell(
                        child: SizedBox(
                          width: deviceSize.width * 0.28,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Image.asset(
                                    width: deviceSize.width * 0.28,
                                    height: deviceSize.width * 0.17,
                                    color: BookDashboardProvide
                                            .clicedPendingBooking
                                        ? Color(0xff28306e)
                                        : null,
                                    'assets/images/1x/Asset 23.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    child: Center(
                                      child: Text('2',
                                          style: TextStyle(
                                              color: Color(0xff3ab284),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.055)),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.03)),
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    child: Center(
                                      child: Text('Pending Bookings',
                                          style: TextStyle(
                                              color: BookDashboardProvide
                                                      .clicedPendingBooking
                                                  ? Color.fromARGB(
                                                      255, 255, 255, 255)
                                                  : Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.025)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onLongPress: () => {foo.ClicedPndingBooking()},
                        onTap: () => {
                          widget.myBook.changeStateMyBooking('Pending Booking'),
                          Navigator.of(context).pushNamed(
                            MyBookings.routeName,
                          )
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Text('Quick Access',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica-Bold',
                          fontSize: deviceSize.width * 0.055)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<BookDashboardProvide>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: BookDashboardProvide.clicedBrows
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Browse Caregivers',
                                    style: TextStyle(
                                        color: BookDashboardProvide.clicedBrows
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.042)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 11.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClicedBrows()},
                    onTap: () => {
                      widget.myBook.changeStateMyBooking('isPostMyNeeds'),
                      Navigator.of(context).pushNamed(
                        BrowseCaregivers.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<BookDashboardProvide>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: BookDashboardProvide.clicedPost
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Post My Needs',
                                    style: TextStyle(
                                        color: BookDashboardProvide.clicedPost
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.042)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 10.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClicedPost()},
                    onTap: () => {
                      widget.myBook.changeStateMyBooking('isPostMyNeeds'),
                      Navigator.of(context).pushNamed(
                        PostMyNeeds.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<BookDashboardProvide>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: BookDashboardProvide.clicedFavorite
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Favorite Caregivers',
                                    style: TextStyle(
                                        color: BookDashboardProvide
                                                .clicedFavorite
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.042)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 5.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClicedFavorite()},
                    onTap: () => {
                      widget.myBook.changeStateMyBooking('isFavorite'),
                      Navigator.of(context).pushNamed(
                        FavoriteCaregivers.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<BookDashboardProvide>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: BookDashboardProvide.clicedNotification
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('My Notifications',
                                    style: TextStyle(
                                        color: BookDashboardProvide
                                                .clicedNotification
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.042)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 4.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: deviceSize.width * 0.03,
                                  left: deviceSize.width * 0.03),
                              child: Container(
                                height: deviceSize.width * 0.05,
                                width: deviceSize.width * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))
                                    //more than 50% of width makes circle
                                    ),
                                alignment: Alignment.center,
                                child: Text('1',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Helvetica',
                                        fontWeight: FontWeight.bold,
                                        fontSize: deviceSize.width * 0.03)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClicedNotification()},
                    onTap: () => {
                      widget.myBook
                          .changeStateMyBooking('isClientNotifications'),
                      Navigator.of(context).pushNamed(
                        ClientNotifications.routeName,
                      )
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
