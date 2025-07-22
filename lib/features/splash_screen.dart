import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixeltrue/features/auth/presentation/auth_gate.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
        (){
        if(!mounted) return;
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context)=> AuthGate()
          )
        );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2,
              child:SvgPicture.asset(
                  'assets/images/Pattern.svg',
                  fit: BoxFit.cover,
                )
            ),
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withAlpha((0.4*255).toInt()),
                        Color(0xFFFFFFFF)
                      ]
                  )
                ),
              ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Logo.png',
                    width: 175,
                    height: 139,
                  ),
                  ShaderMask(
                    shaderCallback: (bounds)=>LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF53E88B),
                        Color(0xFF15BE77)
                      ]
                    ).createShader(bounds),
                    child: Text(
                      'FoodNinja',
                      style: GoogleFonts.viga(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Deliver Favorite Food',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
