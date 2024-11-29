import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final color = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/miauamor.jpg'),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Pelusita',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Sans-serif',
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Gatito perfecto'.toLowerCase(),
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 120.0,
                child: Divider(
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              infoCard(
                icon: Icons.favorite,
                text: 'Amo el atún y recibir amor',
              ),
              infoCard(
                icon: Icons.people,
                text: 'Mi humana me pertenece',
              ),
              infoCard(
                icon: Icons.calendar_month,
                text: 'Tengo 10 meses',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // TODO 6: Why do we use these curly brackets {} inside parantheses ()? What do they do to parameters? Please answer this question in this very comment.

  // Las llaves dentro de los paréntesis sirven para definir parámetros con nombre (named parameters),
  // que permiten especificar argumentos en cualquier orden al llamar la función.
  // Además, podemos hacer que algunos parámetros sean obligatorios usando `required`.

  Widget infoCard({required IconData icon, required String text}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            icon,
            size: 30.0,
            color: color.shade400,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: color.shade400,
            ),
          ),
        ),
      ),
    );
  }
}
