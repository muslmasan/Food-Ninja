import'package:flutter/gestures.dart';
import'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixeltrue/views/auth/sign_up.dart';
import 'package:pixeltrue/views/home.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/auth_provider.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    return Scaffold(
        body: Stack(
          children: [
            SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/2.5,
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
                          'Login To Your Account',
                          style: TextStyle(
                            fontFamily: 'bentonBold'
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
                          child: TextField(
                            controller: emailController,
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
                            obscureText: true,
                            controller: passwordController,
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
                        Align(
                          alignment: Alignment.topLeft,
                          child: ShaderMask(
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
                                      'Google',
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
                            onPressed: () async{
                              await auth.login(emailController.text, passwordController.text);
                              if(!context.mounted) return ;
                              try{
                                if(auth.user != null ){
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context)=>Home())
                                  );
                                }else if (auth.error != null){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(auth.error!))
                                  );
                                }
                              }catch (e){
                                print(e.toString());
                              }

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
                        SizedBox(height: 16,),
                        Text.rich(
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            children: [
                              TextSpan(
                                text:'Signup',
                                recognizer:TapGestureRecognizer()..onTap=(){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>SignUp())
                                  );
                                },
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.green
                                )
                              )
                            ]
                          )
                        )

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
