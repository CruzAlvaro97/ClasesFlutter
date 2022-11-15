import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        elevation: 10,
        title: const Text('Mi Computadora'),
      ),
      body: ListView(
        children: const [
          //
          // Card 1
          Card(
            child: ListTile(
              title: Text(
                'Modelo de ordenador',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('HUAWEI Mate D14'),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                  "https://1000marcas.net/wp-content/uploads/2019/12/Huawei-Logo.png",
                ),
                radius: 30,
              ),
              trailing: Icon(
                Icons.memory_outlined,
                color: Colors.greenAccent,
                size: 30,
              ),
            ),
          ),
          //
          // Card 2
          Card(
            child: ListTile(
              title: Text(
                'Sistema operativo',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('Windows 11 Home'),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                  "https://www.wizcase.com/wp-content/uploads/2021/10/Windows-11-logo.jpg",
                ),
                radius: 30,
              ),
              trailing: Icon(
                Icons.computer_outlined,
                color: Colors.greenAccent,
                size: 30,
              ),
            ),
          ),
          //
          // Card 3
          Card(
            child: ListTile(
              title: Text(
                'Memoria RAM',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('8192 MB RAM'),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                  "https://www.dz-techs.com/wp-content/uploads/2015/11/ram-DzTechs.png",
                ),
                radius: 30,
              ),
              trailing: Icon(
                Icons.memory_outlined,
                color: Colors.greenAccent,
                size: 30,
              ),
            ),
          ),
          //
          // Card 4
          Card(
            child: ListTile(
              title: Text(
                'Procesador',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('AMD Ryzen 5 3500U (8CPUs)'),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                  "https://img1.freepng.fr/20180613/ei/kisspng-socket-am4-intel-core-ryzen-central-processing-uni-ryzen-5b20f70a2dcc91.7934286915288870501876.jpg",
                ),
                radius: 30,
              ),
              trailing: Icon(
                Icons.move_up_outlined,
                color: Colors.greenAccent,
                size: 30,
              ),
            ),
          ),
          //
        ],
      ),
    );
  }
}
