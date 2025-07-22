import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/4,
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
                          Colors.white.withAlpha((0.7*255).toInt()),
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
                          SizedBox(height: 56,),
                          Text(
                            'Login To Your Account',
                            style: TextStyle(
                                fontFamily: 'bentonBold'
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

                          SizedBox(height: 16,),
                          Container(
                            height: 57,
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

                          SizedBox(height: 24,),
                          Text(
                            'Or Continue With',
                            style: TextStyle(
                              fontFamily: 'bentonBold',

                            ),
                          ),

                          SizedBox(height: 24,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
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
                                  padding: const EdgeInsets.all(24.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/facebook.svg',
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(
                                            fontFamily: 'bentonBold'
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
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
                                  padding: const EdgeInsets.all(24.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/google.svg',
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(
                                            fontFamily: 'bentonBold'
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 24,),
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
                              'Forgot Your Password?',
                              style: TextStyle(
                                fontFamily: 'bentonMedium',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 32,),
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
                                'Login',
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
          ),
        )
    );
  }
}
