# SpGridItem

As the main doc, this package is inspired by bootstrap. We create grid width with 12 row declaration.

<table>
  <tr>
    <th>Props</th>
    <th>Types</th>
    <th>Description</th>
  <tr>
  <tr>
    <td>xs</td>
    <td>int = 12</td>
    <td>The width of SpGrid Item when the screen lower or equal width <code>SpGridSize.xs</code></td>
  </tr>
  <tr>
    <td>sm</td>
    <td>int?</td>
    <td>The width of SpGrid Item when the screen lower or equal width <code>SpGridSize.sm</code> if it is null it will set as xs value</td>
  </tr>
  <tr>
    <td>md</td>
    <td>int?</td>
    <td>The width of SpGrid Item when the screen lower or equal width <code>SpGridSize.md</code> if it is null it will set as xs value</td>
  </tr>
  <tr>
    <td>lg</td>
    <td>int?</td>
    <td>The width of SpGrid Item when the screen lower or equal width <code>SpGridSize.lg</code> if it is null it will set as xs value</td>
  </tr>
  <tr>
    <td>child</td>
    <td>required Widget</td>
    <td>Child widget inside this element tree</td>
  </tr>
  <tr>
    <td>decoration</td>
    <td>BoxDecoration?</td>
    <td>The decoration to paint behind the child.</td>
  </tr>
  <tr>
    <td>padding</td>
    <td>EdgeInsetsGeometry?</td>
    <td>Empty space to inscribe inside the [decoration]. The [child], if any, is placed inside this padding.</td>
  </tr>
  <tr>
    <td>alignment</td>
    <td>AlignmentGeometry?</td>
    <td>Align the [child] within the container.</td>
  </tr>
</table>

Easy way to understand how grid is
<img src="https://raw.githubusercontent.com/nggepe/simple_grid/master/docs/grid-example.png" width="100%"/>
