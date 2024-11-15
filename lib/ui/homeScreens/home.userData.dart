import 'package:flutter/material.dart';
import 'home.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();  
}

class _UserDataScreenState extends State<UserDataScreen> {



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
                'Mis Datos',
                style: TextStyle(
                  color: Color.fromARGB(255, 141, 74, 180),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              TextField(
                decoration: const InputDecoration(labelText: 'Usuario'),
                readOnly: true,
              ),
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Correo'
                ),
                readOnly: true,
              ), 
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: 'Nombre(s)'),
                readOnly: true,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: 'Apellido(s)'),
                readOnly: true,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: 'País'),
                readOnly: true,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: 'Ciudad'),
                readOnly: true,
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => HomeScreen())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 245, 230, 253),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                child: const Text(
                  'Regresar',
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