import 'package:flutter/material.dart';
import 'package:flutter_auth/config/palette.dart';
//import 'package:farmland/data/data.dart';
import 'package:flutter_auth/widgets/widgets.dart';
import 'package:flutter_auth/screens/eqhome/Eqsell/EqSell';
import 'package:flutter_auth/screens/eqhome/Eqrent/EqRent';
import 'package:flutter_auth/screens/home/Batai/Batai.dart';

class EqHomeScreen extends StatefulWidget {
  @override
  _EqHomeScreenState createState() => _EqHomeScreenState();
}

class _EqHomeScreenState extends State<EqHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffC5E8B7),
                Color(0xffC5E8B7),
                Color(0xff83D475),
                Color(0xff83D475),
                Color(0xff57C84D),
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 270,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  // color: Palette.appbar,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: screenHeight * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'FARMLAND',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Are you searching for equipments?',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Text(
                          'If you wanna sell or rent your equipments, please go for below listed options',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        /*  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton.icon(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        onPressed: () {},
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Call Now',
                          style: Styles.buttonTextStyle,
                        ),
                        textColor: Colors.white,
                      ),
                      FlatButton.icon(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        onPressed: () {},
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        icon: const Icon(
                          Icons.chat_bubble,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Send SMS',
                          style: Styles.buttonTextStyle,
                        ),
                        textColor: Colors.white,
                      ),
                    ],
                  ),*/
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height:20),
              EqSell(),
              SizedBox(
                height: 10,
              ),
              EqRent(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
