import 'package:flutter/material.dart';
import '../auth/presentation/login.dart';

class OnboardingSecond extends StatelessWidget {
  const OnboardingSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Image.asset(
                    'assets/images/onboardingSecond.png'
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'Food Ninja is Where Your Comfort Food Lives',
                      style: TextStyle(
                        fontFamily: 'bentonBold',
                        fontSize: 23,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Enjoy a fast and smooth food delivery at your doorstep',
                    style: TextStyle(
                        fontFamily: 'bentonBook'
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 42,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF53E88B),
                              Color(0xFF15BE77)
                            ]
                        )
                    ),
                    width: 157,
                    height: 57,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context)=>Login())
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),

                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontFamily: 'bentonBold',
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
