# Introduction

[![pub package](https://img.shields.io/pub/v/simple_grid.svg)](https://pub.dev/packages/simple_grid)
[![build](https://github.com/nggepe/simple_grid/actions/workflows/dart.yml/badge.svg)](https://github.com/nggepe/simple_grid/actions/workflows/dart.yml)

**Inspired by bootstrap** ,
This is dynamic grid layout that you can use Like a bootstrap grid, but the size following <a href="https://material-ui.com/customization/breakpoints/">material UI</a> break points. You can also customize your break point like <a href="#customize-break-point">here</a>.
This package purely using mediaquery, don't worry about the render.

#### Simple Demo

code example <a href="#example">here</a>
<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/doc/demo-grid.gif" width="100%"/>

#### Order Demo

code example <a href="#order-example">here</a>
<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/doc/order-example.gif" width="100%"/>

#### Grid Explanation

Bootstrap, material-ui or another web-grid always use 12 size. Here is the image example:
<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/doc/grid-example.png" style="max-width: 400px;" />

## Classes

There are 3 classes that you have to now, these are:

1. <code>SpGrid</code> is the container of grid, <a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpGrid/README.md">more information here</a>
2. <code>SpGridItem</code> is the children of <code>SpGrid</code>, <a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpGridItem/README.md">more information here</a>
3. <code>SpGridSize</code> is the class that you can declare the maximum of the **screen** size, <a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpGridSize/README.md">more information here</a>
4. <code>SpOrder</code>, this class is a sort class. when you use 1 of it's value, the value will create an ordering when the screen on the value condition. <a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpOrder/README.md">more information here</a>

## Example

```dart
SpGrid(width: MediaQuery.of(context).size.width, children: [
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
]);
```

## Order Example

```dart
import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple_grid',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIMPLE GRID EXAMPLE"),
      ),
      body: SpGrid(
        width: MediaQuery.of(context).size.width,
        spacing: 10,
        runSpacing: 10,
        children: [
          SpGridItem(
            xs: 12,
            md: 6,
            order: SpOrder(sm: 1, xs: 1),
            child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello!",
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "I'm John Doe and I Love Programming",
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SpGridItem(
            xs: 12,
            md: 6,
            order: SpOrder(sm: 0, xs: 0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/nggepe/simple_grid/master/doc/john.png"))),
            ),
          ),
        ],
      ),
    );
  }
}
```

# Customize Break Point

<div id="#sp-break-point"></div>

```dart
SpGrid(
  width: MediaQuery.of(context).size.width,
  gridSize: SpGridSize(xs: 0, sm: 500, md: 768, lg: 980, xl: 1200),
  children:[],
)
```
