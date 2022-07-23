import 'package:flutter/material.dart';

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
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(0.03 * deviceSize.height),
                child: Text(
                  'My Bookings',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
              ),
              //Padding(padding: EdgeInsets.only(top: ))
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: deviceSize.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          "5",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000)),
                        ),
                      ),
                      subtitle: Center(
                        child: Text(
                          "Previous Bookings",
                          style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                      ),
                      onTap: () => {
                        widget.myBook.changeStateMyBooking('isPrevious'),
                        Navigator.of(context).pushNamed(
                          MyBookings.routeName,
                        )
                      },
                    ),
                  ),
                  Container(
                    width: deviceSize.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000)),
                        ),
                      ),
                      subtitle: Center(
                        child: Text(
                          "Current Bookings",
                          style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                      ),
                      onTap: () => {
                        widget.myBook.changeStateMyBooking('isCurrent'),
                        Navigator.of(context).pushNamed(
                          MyBookings.routeName,
                        )
                      },
                    ),
                  ),
                  Container(
                    width: deviceSize.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000)),
                        ),
                      ),
                      subtitle: Center(
                        child: Text(
                          "Pending Bookings",
                          style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                      ),
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
              //Padding(padding: EdgeInsets.only(top: ))],
              Padding(
                padding: EdgeInsets.all(0.03 * deviceSize.height),
                child: Text(
                  'Quick Access',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
              ),
              //Padding(padding: EdgeInsets.only(top: ))],
              Expanded(
                  child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black87)),
                child: ListTile(
                  title: Text(
                    "Browse Caregivers",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)),
                  ),
                  leading: Icon(Icons.search),
                ),
              )),
              //Padding(padding: EdgeInsets.only(top: ))],
              Expanded(
                  child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black87)),
                child: ListTile(
                  title: Text(
                    "Post My Needs",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)),
                  ),
                  leading: Icon(Icons.edit),
                  onTap: () => {
                    widget.myBook.changeStateMyBooking('isPostMyNeeds'),
                    Navigator.of(context).pushNamed(
                      PostMyNeeds.routeName,
                    )
                  },
                ),
              )),
              //Padding(padding: EdgeInsets.only(top: ))],
              Expanded(
                  child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black87)),
                child: ListTile(
                  title: Text(
                    "Favorite Caregivers",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)),
                  ),
                  leading: Icon(Icons.favorite),
                  onTap: () => {
                    widget.myBook.changeStateMyBooking('isFavorite'),
                    Navigator.of(context).pushNamed(
                      FavoriteCaregivers.routeName,
                    )
                  },
                ),
              )),
              //Padding(padding: EdgeInsets.only(top: ))],
              Expanded(
                  child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black87)),
                child: ListTile(
                  title: Text(
                    "My Notifications",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)),
                  ),
                  leading: Icon(Icons.notifications_active),
                  onTap: () => {
                    widget.myBook.changeStateMyBooking('isClientNotifications'),
                    Navigator.of(context).pushNamed(
                      ClientNotifications.routeName,
                    )
                  },
                ),
              )),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.15)),
            ]),
      ),
    );
  }
}
