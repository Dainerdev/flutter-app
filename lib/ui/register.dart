import 'package:flutter/material.dart';
import 'package:flutter_app_und3/main.dart';
import 'login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //Alerta para Confirmara que desea regresar
  Future<bool> _exitConfirmation() async {
    return await showDialog(
          context: context,
          barrierDismissible: false,                      
          barrierColor: Color.fromARGB(180, 0, 0, 0),
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('¿Deseas regresar?',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              content: const Text('Los datos ingresados se perderán.',
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Cancela y no regresa
                  },
                  child: const Text('Cancelar',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Confirma y regresa
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainApp()));
                  },
                  child: const Text('Regresar',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            );
          },
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 90.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Resístrate',
              style: TextStyle(
                color: Color.fromARGB(255, 141, 74, 180),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            TextField(
              decoration: const InputDecoration(labelText: 'Usuario'),
            ),
            const SizedBox(height: 20),
            TextField(
                decoration: const InputDecoration(
                    labelText: 'Correo', hintText: 'ejemplo.correo@gmail.com')),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Confirmar contraseña'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Nombre(s)'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Apellido(s)'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'País'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Ciudad'),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a la pantalla de login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 141, 74, 180),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: const Text(
                'Registrar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _exitConfirmation,
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
    ));
  }
}
