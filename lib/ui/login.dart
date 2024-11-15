import 'package:flutter/material.dart';
import 'package:flutter_app_und3/main.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
  
}

class _LoginScreenState extends State<LoginScreen> {

  // Identificadores de los textfields
  final email = TextEditingController();
  final password = TextEditingController();

  //variables
  String ema = '';
  String pass = '';

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
                controller: email,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'Correo',
                  hintText: 'ejemplo.correo@gmail.com'
                ),
                onChanged: (value) {},

              ),              
              const SizedBox(height: 20),
              // password
              TextField(
                controller: password,
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
                onPressed: () {

                  //Guardar los datos en las variables
                  ema = email.text;
                  pass = password.text;

                  // Validar que los campos no esten vacios
                  if (ema == '' || pass == '') {
                    showDialog(
                      context: context,
                      barrierDismissible: false,                      
                      barrierColor: Color.fromARGB(180, 0, 0, 0),
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('Notificación!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Text('Por favor, ingrese los datos de usuario.',
                                  style: TextStyle(
                                    fontSize: 16
                                  ),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              }, 
                              child: Text('Entiendo',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ),
                          ],
                        );
                      }
                    );
                  } else if (ema == 'yo' && pass == '123') { //Validar que los datos pertenezcan a un usuario
                    showDialog(
                      context: context, 
                      barrierDismissible: false,
                      barrierColor: Color.fromARGB(180, 0, 0, 0),
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('Notificación!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Text('Inicio de sesión correcto.',
                                  style: TextStyle(
                                    fontSize: 16
                                  ),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen())
                                );                                
                              }, 
                              child: Text('Continuar',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    );
                  } else {
                    showDialog(
                      context: context, 
                      barrierDismissible: false,
                      barrierColor: Color.fromARGB(180, 0, 0, 0),
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('Notificación!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Text('Credeniales incorrectas. Verifique e inténtelo nuevamente.',
                                  style: TextStyle(
                                    fontSize: 16
                                  ),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              }, 
                              child: Text('Entiendo',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ),
                          ],
                        );
                      }
                    );
                  } 

                  // Vaciar los campos
                  email.text = '';
                  password.text = '';
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
              const SizedBox(height: 20),
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





  
  