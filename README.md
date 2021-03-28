# Introduction

[![pub package](https://img.shields.io/pub/v/simple_grid.svg)](https://pub.dev/packages/simple_grid)
[![build](https://github.com/nggepe/simple_grid/actions/workflows/dart.yml/badge.svg)](https://github.com/nggepe/simple_grid/actions/workflows/dart.yml)

**Inspired by bootstrap** ,
This is dynamic grid layout that you can use Like a bootstrap grid, but the size following <a href="https://material-ui.com/customization/breakpoints/">material UI</a> break points. You can also customize your break point like <a href="#customize-break-point">here</a>.
This package purely using mediaquery, don't worry about the render.

#### Simple Demo

<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/doc/demo-grid.gif" width="100%"/>

#### Order Demo

<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/doc/order-example.gif" width="100%"/>

#### Grid Explanation

Bootstrap, material-ui or another web-grid always use 12 size. Here is the image example:
<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/doc/grid-example.png" style="max-width: 400px;" />

## Explanation

There are 3 classes that you have to now, these are:

1. <code>SpGrid</code> is the container of grid, <a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpGrid/README.md">more information here</a>
2. <code>SpGridItem</code> is the children of <code>SpGrid</code>, <a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpGridItem/README.md">more information here</a>
3. <code>SpGridSize</code> is the class that you can declare the maximum of the **screen** size, <a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpGridSize/README.md">more information here</a>



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

# Customize Break Point

<div id="#sp-break-point"></div>

```dart
SpGrid(
  width: MediaQuery.of(context).size.width,
  gridSize: SpGridSize(xs: 0, sm: 500, md: 768, lg: 980, xl: 1200),
  children:[],
)
```
