import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Widget _buildItems(String text) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: Text(text)),
          Flexible(
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.angleRight,
                size: 16,
                color: Colors.black26,
              ),
              onPressed: () {
                print('object');
              },
            ),
          )
        ],
      );
    }

    Widget _builTop() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
              'Ezana Tesfaye',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Text(
              'ezex.55@gmail.com',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              '2135317697',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            _builTop(),
            Divider(),
            _buildItems('Customer Service'),
            Divider(),
            _buildItems('Your Membership'),
            Divider(),
            _buildItems('Promos and Credits'),
            Divider(),
            _buildItems('Payments'),
            Divider(),
            _buildItems('Addresses'),
            Divider(),
            _buildItems('Vehicles'),
            Divider(),
            _buildItems('Legal'),
            Divider(),
            _buildItems('Log Out'),
          ],
        ),
      ),
    );
  }
}
