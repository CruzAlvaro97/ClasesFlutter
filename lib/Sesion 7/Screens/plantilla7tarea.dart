import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantillaScroll7tarea extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final int? numero;

  const PlantillaScroll7tarea(
      {super.key, this.img, this.title, this.subtitle, this.numero});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 450,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.network(
                        fit: BoxFit.fill,
                        '$img',
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Lets explore FRANCE!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            'Lets go to: $title',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '$subtitle',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.circle,
                          color: Colors.amber,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                          height: 5,
                        ),
                        Icon(
                          Icons.circle,
                          color: Color.fromARGB(65, 255, 193, 7),
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                          height: 5,
                        ),
                        Icon(
                          Icons.circle,
                          color: Color.fromARGB(65, 255, 193, 7),
                          size: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 20,
                    ),
                    // SizedBox(
                    //   height: 50,
                    //   width: 300,
                    //   child: FloatingActionButton(
                    //       elevation: 0,
                    //       backgroundColor: Colors.amberAccent,
                    //       child: Text(
                    //         'Lets go to $title!',
                    //         style: const TextStyle(
                    //           fontSize: 22,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //       ),
                    //       onPressed: () {}),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
