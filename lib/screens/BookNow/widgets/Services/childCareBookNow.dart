import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/childCareProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../pricingCalculatorBookNow.dart';

class ChildCareBookNow extends StatefulWidget {
  static const routeName = '/childCareBookNow-screen';
  ChildCareProvider postProvider = ChildCareProvider();

  @override
  _ChildCareBookNowState createState() => _ChildCareBookNowState();
}

class _ChildCareBookNowState extends State<ChildCareBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Color(0xff28306e),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => BookingsDashboard()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Child Care",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        'Please specify the age group(s)',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        'Number of children',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.black87)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.18,
                            height: deviceSize.height * 0.07,
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => CheckboxListTile(
                                activeColor: Colors.green,
                                value: ChildCareProvider.newbornCheckbox,
                                onChanged: (val) {
                                  foo.changeNewbornCheckbox();
                                  foo.calculateNumberOfChildren();
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.45,
                            child: Text(
                              'Newborn (0 - 3 month)',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.10)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfChildrenNewborn}',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ),
                          ),
                          SizedBox(
                              child: Column(
                            children: [
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfChildrenNewborn(false),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.minimize),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfChildrenNewborn(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.18,
                            height: deviceSize.height * 0.07,
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => CheckboxListTile(
                                activeColor: Colors.green,
                                value: ChildCareProvider.infantCheckbox,
                                onChanged: (val) {
                                  foo.changeInfantCheckbox();
                                  foo.calculateNumberOfChildren();
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.45,
                            child: Text(
                              'Infant (3 - 12 months)',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.10)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfInfant}',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ),
                          ),
                          SizedBox(
                              child: Column(
                            children: [
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfInfant(false),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.minimize),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfInfant(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.18,
                            height: deviceSize.height * 0.07,
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => CheckboxListTile(
                                activeColor: Colors.green,
                                value: ChildCareProvider.toddlerCheckbox,
                                onChanged: (val) {
                                  foo.changeToddlerCheckbox();
                                  foo.calculateNumberOfChildren();
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.45,
                            child: Text(
                              'Toddler (1 - 3 years)',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.1)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfToddler}',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ),
                          ),
                          SizedBox(
                              child: Column(
                            children: [
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfToddler(false),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.minimize),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfToddler(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.18,
                            height: deviceSize.height * 0.07,
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => CheckboxListTile(
                                activeColor: Colors.green,
                                value: ChildCareProvider.preschoolerCheckbox,
                                onChanged: (val) {
                                  foo.changePreschoolerCheckbox();
                                  foo.calculateNumberOfChildren();
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.45,
                            child: Text(
                              'Preschooler (3 - 5 years)',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.10)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfPreschooler}',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ),
                          ),
                          SizedBox(
                              child: Column(
                            children: [
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfPreschooler(false),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.minimize),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfPreschooler(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.18,
                            height: deviceSize.height * 0.07,
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => CheckboxListTile(
                                activeColor: Colors.green,
                                value:
                                    ChildCareProvider.primarySchoolerCheckbox,
                                onChanged: (val) {
                                  foo.changePrimarySchoolerCheckbox();
                                  foo.calculateNumberOfChildren();
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.45,
                            child: Text(
                              'Primary Schooler (5 - 12 years)',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.10)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfPrimarySchooler}',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ),
                          ),
                          SizedBox(
                              child: Column(
                            children: [
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfPrimarySchooler(false),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.minimize),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfPrimarySchooler(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total number of children to be cared for',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.03),
                    ),
                    Consumer<ChildCareProvider>(
                      builder: (_, foo, __) => Text(
                        '${ChildCareProvider.numberOfChildren}',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.03),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.black87)),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      'In case the requested care schedule varies for your children, you need to create separate care requests for each child. In such case, each care request will indicate 1 child. ',
                      style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 14, 138, 62)),
                    ),
                  ),
                ),
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
                          .pushNamed(PricingCalculatorBookNow.routeName);
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
