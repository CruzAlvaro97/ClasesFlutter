import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_1/Sesion%203/page/animacion.dart';
import 'package:flutter_ejemplo_1/Sesion%203/page/images.dart';
import 'package:flutter_ejemplo_1/Sesion%203/page/listtile.dart';

// StatelessW: Se crea automaticamente el builder
// La clase debe tener nombre primero en mayúscula
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffolf: Parte superior del contenido.
      appBar: AppBar(
        title: const Text('Home'),
        leading: const FlutterLogo(),
        centerTitle: true,
        elevation: 10,
      ),
      //
      body: Padding(
        // Wrapwithpaddign: sugerencia automática para dar margen.
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            // Botón 1
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              color: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Mi Computadora',
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListTileDemo()));
              },
            ),
            //
            // Botón 2
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Imagen',
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImagesDemo()));
              },
            ),
            //
            //Botón 3
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              color: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Formas aleatorias',
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimacionDemo()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
