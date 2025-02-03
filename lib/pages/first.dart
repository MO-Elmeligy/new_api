import 'package:flutter/material.dart';
class FirstPage extends StatelessWidget {

  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:
      Container(
        child:Stack(
          children: [
          Positioned(
          bottom: 0,
            right: 0,
            child: Image.asset('assets/images/login_bottom.png', width: size.width * 0.8),
            ),
          ],
        ) ,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color.fromARGB(255, 220, 47, 255).withOpacity(0.6),
            ],
          ),
        ),
      ),
    );
  }
}