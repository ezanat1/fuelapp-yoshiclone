import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlertsScreen extends StatefulWidget {
  AlertsScreen({Key key}) : super(key: key);

  @override
  _AlertsScreenState createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 160,
          alignment: Alignment.center,
          child: Column(
            children: [
              IconButton(
                color: Colors.black45,
                onPressed: () {
                  print('alert');
                },
                icon: Icon(
                  FontAwesomeIcons.exclamationTriangle,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'There are no alrets today.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
