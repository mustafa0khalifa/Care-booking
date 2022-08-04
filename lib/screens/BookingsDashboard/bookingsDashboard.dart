import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/BrowseCaregivers/browseCaregivers.dart';
import 'package:provider/provider.dart';

import '../../providers/bookDashboardProvide.dart';
import '../../providers/myBookingProvider.dart';
import '../ClientNotifications/clientNotifications.dart';
import '../FavoriteCaregivers/favoriteCaregivers.dart';
import '../MyBookings/myBookings.dart';
import '../PostMyNeeds/postMyNeeds.dart';

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 50,
        height: 10,
      ),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

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
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
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
                          fontSize: 24)),
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
                                width: deviceSize.width * 0.28,
                                height: deviceSize.height * 0.1,
                                child: Center(
                                  child: Image.asset(
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
                                    height: deviceSize.height * 0.03,
                                    child: Center(
                                      child: Text('5',
                                          style: TextStyle(
                                              color: Color(0xff3ab284),
                                              fontFamily: 'Helvetica',
                                              fontSize: 24)),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.height * 0.03)),
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    height: deviceSize.height * 0.03,
                                    child: Center(
                                      child: Text('Previous Booking',
                                          style: TextStyle(
                                              color: BookDashboardProvide
                                                      .clicedPreviousBooking
                                                  ? Color.fromARGB(
                                                      255, 255, 255, 255)
                                                  : Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize: 13)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onLongPress: () => {foo.ClicedPreviousBooking()},
                        onTap: () => {
                          widget.myBook.changeStateMyBooking('isPrevious'),
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
                                width: deviceSize.width * 0.28,
                                height: deviceSize.height * 0.1,
                                child: Center(
                                  child: Image.asset(
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
                                    height: deviceSize.height * 0.03,
                                    child: Center(
                                      child: Text('2',
                                          style: TextStyle(
                                              color: Color(0xff3ab284),
                                              fontFamily: 'Helvetica',
                                              fontSize: 24)),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.height * 0.03)),
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    height: deviceSize.height * 0.03,
                                    child: Center(
                                      child: Text('Current Booking',
                                          style: TextStyle(
                                              color: BookDashboardProvide
                                                      .clicedCurrentBooking
                                                  ? Color.fromARGB(
                                                      255, 255, 255, 255)
                                                  : Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize: 13)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onLongPress: () => {foo.ClicedCurrentBooking()},
                        onTap: () => {
                          widget.myBook.changeStateMyBooking('isCurrent'),
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
                                width: deviceSize.width * 0.28,
                                height: deviceSize.height * 0.1,
                                child: Center(
                                  child: Image.asset(
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
                                    height: deviceSize.height * 0.03,
                                    child: Center(
                                      child: Text('2',
                                          style: TextStyle(
                                              color: Color(0xff3ab284),
                                              fontFamily: 'Helvetica',
                                              fontSize: 24)),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.height * 0.03)),
                                  SizedBox(
                                    width: deviceSize.width * 0.28,
                                    height: deviceSize.height * 0.03,
                                    child: Center(
                                      child: Text('Pending Booking',
                                          style: TextStyle(
                                              color: BookDashboardProvide
                                                      .clicedPendingBooking
                                                  ? Color.fromARGB(
                                                      255, 255, 255, 255)
                                                  : Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize: 13)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onLongPress: () => {foo.ClicedPndingBooking()},
                        onTap: () => {
                          widget.myBook.changeStateMyBooking('isPending'),
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
                          fontSize: 24)),
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
                                        fontSize: 20)),
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
                                        fontSize: 20)),
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
                                        fontSize: 20)),
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
                                        fontSize: 20)),
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
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.15)),
              ]),
        ),
      ),
    );
  }
}
