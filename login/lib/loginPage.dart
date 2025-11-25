import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    
    String mensagem = 'Você precisa preencher os dois campos';

    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 100,
                  child: Text('Login',style: GoogleFonts.getFont('Lobster',fontSize: 45, color: Colors.deepPurpleAccent)),
                ),
              ),
              TextField(
                onChanged: (value) => email = value,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding( padding: EdgeInsets.only(top: 10)),
              TextField(
                onChanged: (value) => password = value,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding( padding: EdgeInsets.only(top: 15)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  elevation: 4,
                ),
                onPressed: () => {
                  if (email.isNotEmpty && password.isNotEmpty)
                    {
                      mensagem =
                          'Seu email é : "$email" e a sua senha é "$password"',
                    },
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.deepPurple,

                      behavior: SnackBarBehavior.floating,

                      content: Text(mensagem),

                      elevation: 8,

                      duration: const Duration(seconds: 2),
                    ),
                  ),
                },
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
