import 'package:flutter/material.dart';

class EmailPassWidget extends StatelessWidget {
  const EmailPassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email & Password'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Espaciado entre los children
          children: [
            //
            // Ingrese Texto - Correo
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.lightGreenAccent,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.lightBlueAccent,
                hintText: 'Correo Electrónico',
                hintStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                suffixIcon: const Icon(
                  Icons.alternate_email_rounded,
                  color: Colors.black,
                  size: 35,
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
            //
            // Ingrese Texto - Contraseña
            TextFormField(
              obscureText: true,
              // Ocultar el texto ingresado.
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.lightGreenAccent,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.lightBlueAccent,
                hintText: 'Password',
                hintStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                suffixIcon: const Icon(
                  Icons.key_rounded,
                  color: Colors.black,
                  size: 35,
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
            //
            // Ingrese Texto - Teléfono
            TextFormField(
              maxLength: 9,
              // Máximo de caracteres.
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.lightGreenAccent,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.lightBlueAccent,
                hintText: 'Número Celular',
                hintStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                suffixIcon: const Icon(
                  Icons.phone_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
