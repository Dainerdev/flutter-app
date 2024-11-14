import 'package:flutter/material.dart';
import '../main.dart';

class LoginView extends StatelessWidget {
  
  const LoginView({super.key});
  static String id = 'login_view';

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Inicia Sesión',
                style: TextStyle(
                  color: Color.fromARGB(255, 141, 74, 180),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              //email
              TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'Email',
                  hintText: 'ejemplo.correo@gmail.com'
                ),
                onChanged: (value) {}
              ),
              
              const SizedBox(height: 20),
              // password
              TextField(
                decoration: const InputDecoration(                  
                  prefixIcon: Icon(Icons.password_outlined),
                  labelText: 'Contraseña',                  
                ),
                onChanged: (value) {},
                obscureText: true,
              ),
              const SizedBox(height: 30),
              // button
              ElevatedButton(
                onPressed: (){
        
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 141, 74, 180),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100, vertical: 15
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
                child: const Text('Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainApp())                  
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 245, 230, 253),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100, vertical: 15
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
                child: const Text('Regresar',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 141, 74, 180),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}