import 'package:flutter/material.dart';

class DeportesPage extends StatefulWidget {
  const DeportesPage({super.key});

  @override
  State<DeportesPage> createState() => _DeportesPageState();
}

class _DeportesPageState extends State<DeportesPage> {
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
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.orange, width: 2),
                    ),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(horizontal: 16),

                    height: 40,
                    // width: 100,
                    child: Center(
                      child: Text(
                        "Gimnasio",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
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
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.orange, width: 2),
                        ),
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        // width: 100,
                        child: Center(
                          child: Text(
                            "Gimnasio",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
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
