import 'package:flutter/material.dart';
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
            builder: (context) => LandingPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final logo = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? '../assets/images/WhatsAppIndiaLogo1.png'
        : '../assets/images/WhatsAppIndiaLogo.png';

    return Scaffold(
            body: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    logo,
                    width: 85,
                    height: 85,
                  ),
                  SizedBox(
                    height: 250,
                  ),
                  Text(
                    'from',
                    style: TextStyle(
                      color: grey,
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
                        '../assets/images/meta.png',
                        color: secondary,
                        width: 30,
                        height: 30,
                      ),
                      Text(
                        'Meta',
                        style: TextStyle(
                          color: secondary,
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
