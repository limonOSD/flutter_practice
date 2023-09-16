import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  var MyArray = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/09/10/00/49/lovebird-8244066_1280.jpg',
      'title': 'Limon'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/09/10/00/49/lovebird-8244066_1280.jpg',
      'title': 'Limon'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/09/10/00/49/lovebird-8244066_1280.jpg',
      'title': 'Limon'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/09/10/00/49/lovebird-8244066_1280.jpg',
      'title': 'Limon'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/09/10/00/49/lovebird-8244066_1280.jpg',
      'title': 'Limon'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/09/10/00/49/lovebird-8244066_1280.jpg',
      'title': 'Limon'
    },
  ];
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: MyArray.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                MySnackBar(MyArray[index]['title'], context);
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                width: 400,
                child: Image.network(
                  MyArray[index]['img']!,
                  fit: BoxFit.fill,
                ),
              ));
        },
      ),
    );
  }
}
