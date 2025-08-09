import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/2.2,
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
                        Colors.white.withAlpha((0.1*255).toInt()),
                        Color(0xFFFFFFFF)
                      ]
                  )
              ),
            ),
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        ),
                        SizedBox(height: 32,),
                        Text(
                          'Sign Up For Free',
                          style: TextStyle(
                              fontFamily: 'bentonBold',
                            fontSize: 24
                          ),
                        ),
                        SizedBox(height: 32,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(5, 10),
                                blurRadius: 10.0,
                                color: Color(0xFF5A6CEA).withAlpha((0.1*255).toInt()),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/person.svg',
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width:8,),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Escanoo..|',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide.none
                                      ),
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 16,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(5, 10),
                                blurRadius: 10.0,
                                color: Color(0xFF5A6CEA).withAlpha((0.1*255).toInt()),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/mail.svg',
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width:8,),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide.none
                                      ),
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(5, 10),
                                blurRadius: 10.0,
                                color: Color(0xFF5A6CEA).withAlpha((0.1*255).toInt()),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/lock.svg',
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width:8,),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide.none
                                      ),
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/eye.svg',
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width:8,),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/check.svg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width:8,),
                              Text(
                                'Keep Me Signed in',
                                style: TextStyle(
                                  fontFamily: 'bentonRegular',
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/check.svg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width:8,),
                              Text(
                                'Email Me About Special Pricing',
                                style: TextStyle(
                                    fontFamily: 'bentonRegular',
                                    fontSize: 16,
                                    color: Colors.grey
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 24,),
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
                          width: 187,
                          height: 67,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(
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
                              'Create Account',
                              style: TextStyle(
                                  fontFamily: 'bentonBold',
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}


//TODO: adding the functionality to the singup