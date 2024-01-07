import 'package:flutter/material.dart';

class DeportesPage extends StatefulWidget {
  const DeportesPage({super.key});

  @override
  State<DeportesPage> createState() => _DeportesPageState();
}

class _DeportesPageState extends State<DeportesPage> {
  List<Map<String, dynamic>> listDeportes = [
    {"name": "Gimnasio", "isFavorite": false},
    {"name": "Fútbol", "isFavorite": false},
    {"name": "Golf", "isFavorite": false},
    {"name": "Baloncesto", "isFavorite": false},
    {"name": "Natación", "isFavorite": false}
  ];

  List<Map<String, dynamic>> listFavoriteDeportes = [];

  Widget item(Map<String, dynamic> deporte, bool isContainerTop) {
    print("INICIOOOOOO");
    return GestureDetector(
      onTap: () {
        if (isContainerTop == true) {
          // print(title);
          listFavoriteDeportes.add(deporte);
          deporte["isFavorite"]
              ? deporte["isFavorite"] = false
              : deporte["isFavorite"] = true;
          print("CAMBIOOOOOOOOOO");
          setState(() {});
        } else {
          listFavoriteDeportes.remove(deporte);
          setState(() {});
        }
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.orange, width: 2),
          color: deporte["isFavorite"] ? Colors.orange.shade300 : Colors.white,
        ),
        height: 40,
        child: Text(
          deporte["name"],
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("SetState texts App"),
            centerTitle: true,
            backgroundColor: Color(0xffEEA339)),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Cuáles son tus deportes favoritos?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Wrap(
                  // spacing: 5,
                  alignment: WrapAlignment.center,
                  runSpacing: 8,
                  children: [
                    for (int i = 0; i < listDeportes.length; i++)
                      item(listDeportes[i], true),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: Colors.black,
                height: 4,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Mis deportes favoritos son:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    runSpacing: 8,
                    children: [
                      for (int i = 0; i < listFavoriteDeportes.length; i++)
                        item(listFavoriteDeportes[i], false)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
