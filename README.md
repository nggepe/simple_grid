# simple_grid

This is dynamic grid layout that you can use Like a bootstrap grid.
<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/docs/simple-grid-demo.gif" width="100%"/>

## Explanation
There are 3 classes that you have to now, these are:
1. <code>SpGrid</code> is the container of grid
2. <code>SpGridItem</code> is the children of <code>SpGrid</code>
3. <code>SpGridSize</code> is the class that you can declare the maximum of the **screen** size..

### SpGrid
<table>
  <tr>
    <th>Props</th>
    <th>Types</th>
    <th>Description</th>
    <th>Default</th>
  <tr>
  <tr>
    <td>width</td>
    <td>double</td>
    <td>a nullable width that you can use to declare the width of grid container, if null it will following the parent width</td>
    <td>null</td>
  </tr>
  <tr>
    <td>height</td>
    <td>double</td>
    <td>a nullable height that you can use to declare the height of grid container, if null it will following the content height</td>
    <td>null</td>
  </tr>
  <tr>
    <td>margin</td>
    <td>EdgeInsetsGeometry</td>
    <td>Empty space to surround the <code>decoration</code> and <code>child</code></td>
    <td>null</td>
  </tr>
  <tr>
    <td>padding</td>
    <td>EdgeInsetsGeometry</td>
    <td>Empty space to inscribe inside the <code>decoration</code>. The <code>child</code>, if any, is placed inside this padding.</td>
    <td>null</td>
  </tr>
</table>

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
