import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        elevation: 10,
      ),
      body: const Center(
        child: SizedBox(
          height: 350,
          width: double.infinity,
          child: FadeInImage(
            placeholder: AssetImage('assets/espera.gif'),
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2018/04/06/14/04/maki-3295891_960_720.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
