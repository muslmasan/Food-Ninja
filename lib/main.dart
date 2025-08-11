import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pixeltrue/viewmodels/auth_provider.dart';
import 'package:pixeltrue/views/auth/auth_gate.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'Model/repositories/auth_repository.dart';
import 'Model/services/auth_services.dart';


Future<void> main() async{
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
