import 'package:flutter/material.dart';
import 'package:pixeltrue/features/auth/presentation/login.dart';

import 'package:pixeltrue/features/onboarding/onboarding_first.dart';
import 'package:pixeltrue/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {

  @override
  void initState() {
    super.initState();
    _decideNavigation();
  }

  Future<void> _decideNavigation()async{
    final prefs = await SharedPreferences.getInstance();

    // Check if onboarding was shown before
    final bool hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;
    if(!hasSeenOnboarding){
      await prefs.setBool('hasSeenOnboarding', true);
      if(!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder:(context)=>OnboardingFirst()
        )
      );
      return;
    }

    // the page deciding part

    final session = Supabase.instance.client.auth.currentSession;
    if(session != null){
      if(!mounted) return;
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder:(context)=>Home()
          )
      );
    }else{
      if(!mounted) return;
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder:(context)=>Login()
          )
      );
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
