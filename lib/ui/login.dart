import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  
  const LoginView({super.key});
  static String id = 'login_view';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // email
            TextField(
              onChanged: (value) {}
            ),

            // password
            TextField(
              onChanged: (value) {},
            ),

            // button
            ElevatedButton(
              onPressed: ()=>{}, 
              child: const Text('Iniciar Sesión')
            )
          ],
        ),
      ),
    );
  }
}