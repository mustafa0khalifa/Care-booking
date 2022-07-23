import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/childCareProvider.dart';
import 'additionalServices.dart';

class ChildCare extends StatefulWidget {
  static const routeName = '/childCare-screen';
  ChildCareProvider postProvider = ChildCareProvider();

  @override
  _ChildCareState createState() => _ChildCareState();
}

class _ChildCareState extends State<ChildCare> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Please specify the age group(s)',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      'Number of children',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)),
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
                          Text(
                            'Newborn (0 - 3 month)',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.10)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfChildrenNewborn}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                  icon: Icon(Icons.arrow_upward_rounded),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfChildrenNewborn(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.arrow_downward_rounded),
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
                          Text(
                            'Infant (3 - 12 months)',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.10)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfInfant}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                  icon: Icon(Icons.arrow_upward_rounded),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfInfant(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.arrow_downward_rounded),
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
                          Text(
                            'Toddler (1 - 3 years)',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.15)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfToddler}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                  icon: Icon(Icons.arrow_upward_rounded),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfToddler(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.arrow_downward_rounded),
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
                          Text(
                            'Preschooler (3 - 5 years)',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.10)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfPreschooler}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                  icon: Icon(Icons.arrow_upward_rounded),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfPreschooler(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.arrow_downward_rounded),
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
                          Text(
                            'Primary Schooler (5 - 12 years)',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.10)),
                          SizedBox(
                            child: Consumer<ChildCareProvider>(
                              builder: (_, foo, __) => Text(
                                '${ChildCareProvider.numberOfPrimarySchooler}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                  icon: Icon(Icons.arrow_upward_rounded),
                                ),
                              ),
                              Consumer<ChildCareProvider>(
                                builder: (_, foo, __) => IconButton(
                                  onPressed: () => {
                                    foo.changeNumberOfPrimarySchooler(true),
                                    foo.calculateNumberOfChildren(),
                                  },
                                  icon: Icon(Icons.arrow_downward_rounded),
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
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Consumer<ChildCareProvider>(
                      builder: (_, foo, __) => Text(
                        '${ChildCareProvider.numberOfChildren}',
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.black87)),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      'In case the requested care schedule varies for your children, you need to create separate care requests for each child. In such case, each care request will indicate 1 child. ',
                      style: TextStyle(
                          fontSize: 12.0,
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
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AdditionalServices.routeName);
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
