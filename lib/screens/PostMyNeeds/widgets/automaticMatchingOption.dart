import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/caregiverPreferences.dart';
import 'package:provider/provider.dart';
import '../../../providers/PostMyNeedsProvider/automaticMatchingOptionProvider.dart';
import 'NavBar.dart';
import 'caregaverClientRequest.dart';

class AutomaticMatchingOption extends StatefulWidget {
  static const routeName = '/automaticMatchingOption-screen';

  @override
  _AutomaticMatchingOptionState createState() =>
      _AutomaticMatchingOptionState();
}

class _AutomaticMatchingOptionState extends State<AutomaticMatchingOption> {
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
                  'Do you want us to automatically match you with available caregivers?',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<AutomaticMatchingOptionProvider>(
                  builder: (_, foo, __) => ListTile(
                      title: Text(
                          "I want to browse profiles all interested candidates and select my preferred caregiver."),
                      subtitle: Text(
                        'This option is ideal when you are not in a hurry to find the caregiver (example: I am pregnant and need a nanny in 2 months) and when cases of long-term care where the personality match is very important. This option gives you full control to decide on the caregiver you want to work with. You are in the driver\'s seat!',
                        style: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 151, 8, 8)),
                      ),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'browse',
                          groupValue: AutomaticMatchingOptionProvider
                              .automaticMatchingOption,
                          onChanged: (value) {
                            foo.changeAutoMatching(value as String);
                          })),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Do you want us to automatically match you with available caregivers?',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Consumer<AutomaticMatchingOptionProvider>(
                  builder: (_, foo, __) => ListTile(
                      title: Text(
                          " I want to be automatically matched with one or more caregivers based on who applies first to my request. "),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'auto',
                          groupValue: AutomaticMatchingOptionProvider
                              .automaticMatchingOption,
                          onChanged: (value) {
                            foo.changeAutoMatching(value as String);
                          })),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Text(
                  'This process has been optimized for quick matching. In this case, we will match you with the first caregiver who applies to your care request.',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 8, 8)),
                ),
                Text(
                  'Then your care request will be reposted automatically to match you with other caregivers to cover the remaining schedule.',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 8, 8)),
                ),
                Text(
                  'This can be ideal when: ',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 8, 8)),
                ),
                Text(
                  '1. The speed of finding available caregiver(s) is more important than selecting the most preferred caregiver among a pool of interested candidates. ',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 8, 8)),
                ),
                Text(
                  '2. It might be tough to find a single caregiver to cover the entire booking schedule. ',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 8, 8)),
                ),
                Text(
                  'This might be important when the schedule is too long and exhausting to be filled by one caregiver (example: 24-hour shift schedule) or when the schedule is too irregular that no single caregiver might be able to commit to filling (multiple visits needed per the same day).',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 8, 8)),
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
                          .pushNamed(CaregaverClientRequest.routeName);
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
