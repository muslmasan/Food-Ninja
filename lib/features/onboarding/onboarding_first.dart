import 'package:flutter/material.dart';

import 'onboarding_second.dart';

class OnboardingFirst extends StatelessWidget {
  const OnboardingFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Image.asset(
                  'assets/images/onboardingFirst.png'
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 250,
                    child: Text(
                      'Find your Comfort Food here',
                      style: TextStyle(
                        fontFamily: 'bentonBold',
                        fontSize: 23,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Here You Can find a chef or dish for every taste and color. Enjoy!',
                    style: TextStyle(
                      fontFamily: 'bentonBook'
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 64,),
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
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>OnboardingSecond())
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
