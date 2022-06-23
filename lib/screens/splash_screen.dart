import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/images/splash-screen.png',
              height: 350,
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text('Buy some cool stuff!', style: TextStyle(
                color: Color(0xFF00A368),
                fontSize: 35,
                fontWeight: FontWeight.bold
              ))
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                //pushreplacementnamed so it can not goes back to splash screen
                Navigator.pushReplacementNamed(context, 'home_page');
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF00A368),
                ),
                child: const Text('Get Started', style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ))
              )
            )
          ]
        )
      )
    );
  }
}
