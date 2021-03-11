# SpGrid

Some properties of <code>SpGrid</code> class

<table>
  <tr>
    <th>Props</th>
    <th>Types</th>
    <th>Description</th>
  <tr>
  <tr>
    <td>width</td>
    <td>double?</td>
    <td>a nullable width that you can use to declare the width of grid container, if null it will following the parent width</td>
  </tr>
  <tr>
    <td>height</td>
    <td>double?</td>
    <td>a nullable height that you can use to declare the height of grid container, if null it will following the content height</td>
  </tr>
  <tr>
    <td>margin</td>
    <td>EdgeInsetsGeometry?</td>
    <td>Empty space to surround the <code>decoration</code> and <code>child</code></td>
  </tr>
  <tr>
    <td>padding</td>
    <td>EdgeInsetsGeometry?</td>
    <td>Empty space to inscribe inside the <code>decoration</code>. The <code>child</code>, if any, is placed inside this padding.</td>
  </tr>
  <tr>
    <td>decoration</td>
    <td>BoxDecoration?</td>
    <td>The decoration to paint behind the [child]. Use the [color] property to specify a simple solid color. The [child] is not clipped to the decoration. To clip a child to the shape of a particular [ShapeDecoration], consider using a [ClipPath] widget.</td>
  </tr>
  <tr>
    <td>spacing</td>
    <td>double spacing = 0</td>
    <td>How much space to place between children in a run in the main axis.</td>
  </tr>
  <tr>
    <td>runSpacing</td>
    <td>double runSpacing = 0</td>
    <td>How much space to place between the runs themselves in the cross axis.</td>
  </tr>
  <tr>
    <td>alignment</td>
    <td>WrapAlignment alignment = WrapAlignment.start</td>
    <td>How the children within a run should be placed in the main axis.</td>
  </tr>
  <tr>
    <td>runAlignment</td>
    <td>WrapAlignment runAlignment = WrapAlignment.start</td>
    <td>How the runs themselves should be placed in the cross axis.</td>
  </tr>
  <tr>
    <td>crossAlignment</td>
    <td>WrapCrossAlignment crossAlignment = WrapCrossAlignment.start</td>
    <td>How the children within a run should be aligned relative to each other in the cross axis.</td>
  </tr>
  <tr>
    <td>direction</td>
    <td>Axis direction = Axis.horizontal</td>
    <td>The direction to use as the main axis.</td>
  </tr>
  <tr>
    <td>verticalDirection</td>
    <td>VerticalDirection verticalDirection = VerticalDirection.down</td>
    <td>Determines the order to lay children out vertically and how to interpret start and end in the vertical direction.</td>
  </tr>
  <tr>
    <td>textDirection</td>
    <td>TextDirection?</td>
    <td>Determines the order to lay children out horizontally and how to interpret start and end in the horizontal direction.</td>
  </tr>
  <tr>
    <td>children</td>
    <td>required List<SpGridItem></td>
    <td><a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpGridItem/README.md">More information here</a></td>
  </tr>
  <tr>
    <td>gridSize</td>
    <td>SpGridSize?</td>
    <td><a href="https://github.com/nggepe/simple_grid/blob/master/doc/SpGridSize/README.md">More information here</a></td>
  </tr>
</table>
