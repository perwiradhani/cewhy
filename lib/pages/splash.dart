import 'package:flutter/material.dart';
// import 'package:cewhy/home.dart';
import 'package:cewhy/bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg.png'),
                fit: BoxFit.cover
              ),
            ),
            // decoration: const BoxDecoration(color: Colors.purpleAccent),
            // decoration: Image,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // CircleAvatar(
                    //   backgroundColor: Colors.white,
                    //   radius: 50.0,
                    //   child: Icon(
                    //     Icons.local_grocery_store,
                    //     color: Colors.black,
                    //     size: 50.0,
                    //   ),
                    // ),
                    const Padding(padding: EdgeInsets.only(top: 300.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        elevation: 30.0,
                        primary: const Color.fromRGBO(175, 1, 113, 1), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      child: const Text('EXPLORE NOW!'),
                    )
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //       elevation: 2, onSurface: Colors.purpleAccent),
                    //   onPressed: () { },
                    //   child: const Text('Start'),
                    // )
                    // Text(
                    //   "CEWHY",
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 24.0,
                    //       color: Colors.white),
                    // )
                  ],
                ),
              ),
              // Expanded(
              //   flex: 1,
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     CircularProgressIndicator.adaptive(value: 3.0,),
              //     Padding(padding: const EdgeInsets.only(top: 20.0))
              //   ],
              // ),)
            ],
          )
        ],
      ),
    );
  }
}
