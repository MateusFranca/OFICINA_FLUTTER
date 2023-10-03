import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Livros"),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        childAspectRatio: 0.64, //controla a relação entre a largura e a altura 
        children: [
          Container(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/o-corpo-fala');
                },
                child: Column(
                  children: [
                    Image(
                      image: const AssetImage(
                        'assets/o-corpo-fala.png',
                      ),
                      width: 200,
                      height: 250,
                    ),
                    Text(
                      "O Corpo Fala",
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ],
                )),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mindset');
                },
                child: Column(
                  children: [
                    Image(
                      image: const AssetImage(
                        'assets/mindset.png',
                      ),
                      width: 200,
                      height: 250,
                    ),
                    Text(
                      "Os Códigos do Mindset da Prosperidade",
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}
