import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServicesScreen extends StatelessWidget {
  static const routeName = '/service-screen';
  const ServicesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(232, 245, 255, 0.2),
        title: Text('508 S11 st',
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ServiceContainers(
              topText: 'Gas',
              bottomText: 'Yoshi Comes once a week fill up your gas',
              iconName: FontAwesomeIcons.gasPump,
              colors: Color.fromRGBO(232, 245, 255, 0.3),
            ),
            ServiceContainers(
              topText: 'Tire check',
              bottomText: 'Yoshi Comes once a week checks your tire',
              iconName: FontAwesomeIcons.truckMonster,
              colors: Color.fromRGBO(232, 245, 255, 0.3),
            ),
            ServiceContainers(
              topText: 'Car Wash',
              bottomText:
                  'Have Yoshis skilled car wash team clean upp your ride',
              iconName: FontAwesomeIcons.bath,
              colors: Colors.white,
            ),
            ServiceContainers(
              topText: 'Oil Change',
              bottomText:
                  'Have Yoshis skilled car wash team clean upp your ride',
              iconName: FontAwesomeIcons.oilCan,
              colors: Color.fromRGBO(232, 245, 255, 0.3),
            ),
            ServiceContainers(
              topText: 'Wiper Blades',
              bottomText:
                  'Have Yoshis skilled car wash team clean upp your ride',
              iconName: FontAwesomeIcons.car,
              colors: Colors.white,
            ),
            ServiceContainers(
              topText: 'Enginer Cleaner',
              bottomText:
                  'Have Yoshis skilled car wash team clean upp your ride',
              iconName: FontAwesomeIcons.broom,
              colors: Color.fromRGBO(232, 245, 255, 0.7),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceContainers extends StatelessWidget {
  final Color colors;
  final String topText;
  final IconData iconName;
  final String bottomText;
  ServiceContainers(
      {this.colors, this.topText, this.iconName, this.bottomText});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          colors,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Text(
                    topText,
                    style: TextStyle(
                        color: Color.fromRGBO(53, 86, 153, 1),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text(
                    bottomText,
                    style: TextStyle(
                        color: Color.fromRGBO(53, 86, 153, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                )
              ],
            ),
            Container(
              child: Icon(
                iconName,
                size: 70,
                color: Color.fromRGBO(53, 86, 153, 1),
              ),
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
