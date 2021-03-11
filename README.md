# simple_grid

This is dynamic grid layout that you can use Like a bootstrap grid.
<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/docs/simple-grid-demo.gif" width="100%"/>

## Explanation

There are 3 classes that you have to now, these are:

1. <code>SpGrid</code> is the container of grid
2. <code>SpGridItem</code> is the children of <code>SpGrid</code>
3. <code>SpGridSize</code> is the class that you can declare the maximum of the **screen** size..

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
