import 'package:flutter/material.dart';

class Inicio5 extends StatelessWidget {
  const Inicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 5'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: double.infinity,
              color: const Color.fromARGB(255, 7, 189, 134),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '24',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Text(
                      'años',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: double.infinity,
              color: Colors.white60,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Image(
                          width: 600,
                          height: 450,
                          image: AssetImage('assets/Sterkfontein.jpg'),
                        ),
                        Text(
                          'Cruz Cáceres',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                        Text(
                          'Alvaro',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
