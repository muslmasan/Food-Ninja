import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/auth_provider.dart';
import 'auth/auth_gate.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final client = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: ()async{
             await client.singout();

             if (!context.mounted) return;
             Navigator.pushAndRemoveUntil(
               context,
               MaterialPageRoute(builder: (_) => const AuthGate()),
                   (route) => false, // removes all previous routes
             );
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text(
          'Done'
        ),
      ),
    );
  }
}
