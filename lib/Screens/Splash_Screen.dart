import 'package:flutter/material.dart';
import 'package:tutee_app/Screens/Login_Screen.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../assets/LogoS.png',
              width: 300,
              height: 300,
              color: Colors.white,
            ),
            SizedBox(
              height: 250,
            ),
            Text(
              'from',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  '../assets/LogoA.png',
                  color: Colors.white,
                  width: 60,
                  height: 60,
                ),
                Text(
                  'Madhav',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // }
      // return SpinKitFadingCube(
      //   size: 50,
      //   color: one,
      // );
    );
  }
}
