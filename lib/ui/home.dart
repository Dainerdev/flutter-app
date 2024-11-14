import 'package:flutter/material.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Column(
              children: [
                Text(
                  'Inicio',
                  style: TextStyle(
                    color: Color.fromARGB(255, 141, 74, 180),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '¿Qué deseas realizar?',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 90),
            Column(
              children: [
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 141, 74, 180),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15
                    ),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ), 
                  label: Text('Ver Datos',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                    size: 24,                    
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 141, 74, 180),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 90,
                      vertical: 15
                    ),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ), 
                  label: const Text(
                    'Modificar Datos',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 24,                    
                  ),
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen()
                      )
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
                  child: Text(
                    'Cerrar Sesión',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 141, 74, 180),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}