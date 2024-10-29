import 'package:flutter/material.dart';
import 'package:login__page/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtain the screen size
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Top White Container
          Container(
            width: width,
            height: height,
            color: Colors.white,
          ),
          // Top Blue Container with Image
          Container(
            width: width,
            height: height / 1.6,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 26, 29, 243),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
              ),
            ),
            child: Center(
              child: Image.asset(
                "assets/pront.png",
                width: 300,
                height: 300,
                scale: 0.8,
                errorBuilder: (context, error, stackTrace) {
                  return Text(
                    'Image not found',
                    style: TextStyle(color: Colors.white),
                  );
                },
              ),
            ),
          ),
          // Bottom Purple Container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width,
              height: height / 2.666,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 26, 29, 243),
              ),
            ),
          ),
          // Bottom White Container with Text and Scroll
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width,
              height: height / 2.666,
              padding: EdgeInsets.only(top: 40, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
              ),
              child: SingleChildScrollView(
                // Added scroll functionality
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Learning is Everything",
                      style: TextStyle(
                        fontSize:
                            24, // Increased font size for better visibility
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        wordSpacing: 2,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    // Description text added between the main text and button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Start your journey towards knowledge with us, enjoyable, and effective.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 124, 104, 164),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
