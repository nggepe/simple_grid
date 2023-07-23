import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple_grid',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple_grid"),
      ),
      body: SpGrid(width: MediaQuery.of(context).size.width, children: [
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.blue,
            height: 200,
          ),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.green,
            height: 200,
          ),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.yellow,
            height: 200,
          ),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.purple,
            height: 200,
          ),
        ),
      ]),
    );
  }
}
