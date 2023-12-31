import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //this is button wedgit
          Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(style: BorderStyle.solid, width: 3)),
                  height: 50,
                  width: 370,
                ),
              ),
              Text(
                "Strawberry Paviova Recipe",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'pavloa is a meringue-based dessert named after th Russian ballerina Anna pavlova. Pavlova features a crisp crust and soft , lgiht inside ,topped with fruit and whipped cream',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
