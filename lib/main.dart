import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MainPage extends StatelessWidget {
  List<Map<String, dynamic>> listSuperHeroes = [
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2023/04/12/11/11/ai-generated-7920006_640.jpg",
      "name": "IronMan",
    },
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2023/06/29/02/54/hulk-8095537_1280.png",
      "name": "IronMan",
    },
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2023/06/03/07/01/wonder-woman-8037130_1280.png",
      "name": "IronMan",
    },
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2023/03/14/22/20/relationship-7853278_640.jpg",
      "name": "IronMan",
    },
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2020/09/11/00/06/spiderman-5561671_1280.jpg",
      "name": "IronMan",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Play with me"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.network(listSuperHeroes[0]["urlImage"]),
            Divider(),
            Text(
              "Nombre del hero: ",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Mostrar nombre"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Next"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
