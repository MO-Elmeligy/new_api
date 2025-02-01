import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7E57C2).withOpacity(0.8),
            Color(0xFFFF7043).withOpacity(0.6),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/main_top.png', width: size.width * 0.3),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        const Color.fromARGB(255, 253, 253, 253),
                        Colors.white
                      ],
                    ).createShader(bounds),
                    child: Row(children: [
                      Text(
                      "Weather",
                      style: TextStyle(
                        fontSize: 56,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),Text(
                      "APP",
                      style: TextStyle(
                        fontSize: 35,
                        color: const Color.fromARGB(255, 253, 253, 253),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                    ],),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 50,
                          spreadRadius:0,
                        ),
                      ],
                    ),
                    child: Lottie.asset(
                      "assets/lottie/sun.json",
                      width: 300,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/main_bottom.png'),
          ),
        ],
      ),
    );
  }
} 

/*import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7E57C2).withOpacity(0.8),
            Color(0xFFFF7043).withOpacity(0.6),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/main_top.png', width: size.width * 0.3),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        const Color.fromARGB(255, 253, 253, 253),
                        Colors.white
                      ],
                    ).createShader(bounds),
                    child: Row(children: [
                      Text(
                      "Weather",
                      style: TextStyle(
                        fontSize: 56,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),Text(
                      "APP",
                      style: TextStyle(
                        fontSize: 35,
                        color: const Color.fromARGB(255, 253, 253, 253),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                    ],),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 50,
                          spreadRadius:0,
                        ),
                      ],
                    ),
                    child: Lottie.asset(
                      "assets/lottie/sun.json",
                      width: 300,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/main_bottom.png'),
          ),
        ],
      ),
    );
  }
} */

