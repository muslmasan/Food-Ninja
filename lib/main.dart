import 'package:flutter/material.dart';
import 'package:pixeltrue/features/auth/application/auth_provider.dart';
import 'package:pixeltrue/features/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'features/auth/data/auth_repository.dart';
import 'features/auth/domain/auth_services.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://nkapypnmdrfcrtzjkpcv.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5rYXB5cG5tZHJmY3J0emprcGN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI5NDI4OTIsImV4cCI6MjA2ODUxODg5Mn0.symuoXH7XeMRzMu4zFtPIzdsxKfFo1CGlfa3r6raJ6I',
  );
  final authServices = AuthServices(AuthRepository());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>AuthProvider(authServices))
      ],
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
