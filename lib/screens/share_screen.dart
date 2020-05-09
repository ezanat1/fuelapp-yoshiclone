import 'package:flutter/material.dart';

class ShareScreen extends StatefulWidget {
  ShareScreen({Key key}) : super(key: key);

  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/share.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 95,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Color.fromRGBO(53, 86, 153, 1),
                  )),
              color: Color.fromRGBO(53, 86, 153, 1),
              elevation: 5,
              child: Text(
                'Share with your friends',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => print('share clicked'),
            ),
          ),
        ],
      ),
    );
  }
}
