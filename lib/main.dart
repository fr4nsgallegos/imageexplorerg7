import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imageexplorerg7/deportes_favoritos_page.dart';
import 'package:imageexplorerg7/models/hero_model.dart';

void main() {
  runApp(
    MaterialApp(
      home: DeportesPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<HeroModel> listHeroModel = [
    HeroModel(
        name: "IronMan",
        urlImage:
            "https://cdn.pixabay.com/photo/2023/04/12/11/11/ai-generated-7920006_640.jpg"),
    HeroModel(
        name: "Hulk",
        urlImage:
            "https://cdn.pixabay.com/photo/2023/06/29/02/54/hulk-8095537_1280.png"),
    HeroModel(
        name: "Mujer Maravilla",
        urlImage:
            "https://cdn.pixabay.com/photo/2023/06/03/07/01/wonder-woman-8037130_1280.png"),
    HeroModel(
        name: "Batman",
        urlImage:
            "https://cdn.pixabay.com/photo/2023/03/14/22/20/relationship-7853278_640.jpg"),
    HeroModel(
        name: "Superman",
        urlImage:
            "https://cdn.pixabay.com/photo/2020/09/11/00/06/spiderman-5561671_1280.jpg"),
  ];

  List<Map<String, dynamic>> listSuperHeroes = [
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2023/04/12/11/11/ai-generated-7920006_640.jpg",
      "name": "IronMan",
    },
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2023/06/29/02/54/hulk-8095537_1280.png",
      "name": "Hulk",
    },
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2023/06/03/07/01/wonder-woman-8037130_1280.png",
      "name": "Mujer Maravilla",
    },
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2023/03/14/22/20/relationship-7853278_640.jpg",
      "name": "Batman",
    },
    {
      "urlImage":
          "https://cdn.pixabay.com/photo/2020/09/11/00/06/spiderman-5561671_1280.jpg",
      "name": "Superman",
    },
  ];

  int n = 0;

  String heroName = "";

  @override
  void initState() {
    n = Random().nextInt(listHeroModel.length);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Play with me"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            children: [
              Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: NetworkImage(
                      listHeroModel[n].urlImage,
                      // listSuperHeroes[n]["urlImage"],
                    ),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Container(
              //   height: 300,
              //   width: 300,
              //   child: Image.network(
              //     listSuperHeroes[n]["urlImage"],
              //     height: 300,
              //     fit: BoxFit.contain,
              //   ),
              // ),
              Divider(),
              Text(
                "Nombre del hero: $heroName ",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      heroName = listHeroModel[n].name;
                      // heroName = listSuperHeroes[n]["name"];
                      print(n);
                      setState(() {});
                    },
                    child: Text("Mostrar nombre"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      n = Random().nextInt(listHeroModel.length);

                      // n == listSuperHeroes.length - 1 ? n = 0 : n++;
                      heroName = "";
                      // n++;
                      print(n);
                      setState(() {});
                    },
                    child: Text("Next"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
