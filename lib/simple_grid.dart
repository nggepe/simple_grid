library simple_grid;

import 'package:flutter/material.dart';

class SpGrid extends StatelessWidget {
  ///a nullable width that you can use to declare the width of grid container, if null it will following the parent width
  final double? width;

  ///Empty space to inscribe inside the decoration. The child, if any, is placed inside this padding.
  final EdgeInsetsGeometry? padding;

  ///Empty space to surround the decoration and child
  final EdgeInsetsGeometry? margin;

  ///a nullable height that you can use to declare the height of grid container, if null it will following the content height
  final double? height;

  /// 12 row declaration with screen explanation
  final List<SpGridItem> children;

  ///The decoration to paint behind the [child]. Use the [color] property to specify a simple solid color. The [child] is not clipped to the decoration. To clip a child to the shape of a particular [ShapeDecoration], consider using a [ClipPath] widget.
  final BoxDecoration? decoration;

  ///How much space to place between children in a run in the main axis.
  final double spacing;

  ///How much space to place between the runs themselves in the cross axis.
  final double runSpacing;

  ///How the children within a run should be placed in the main axis.
  final WrapAlignment alignment;

  ///Determines the order to lay children out vertically and how to interpret start and end in the vertical direction.
  final VerticalDirection verticalDirection;

  ///How the children within a run should be aligned relative to each other in the cross axis.
  final WrapCrossAlignment crossAlignment;

  ///How the runs themselves should be placed in the cross axis.
  final WrapAlignment runAlignment;

  ///The direction to use as the main axis.
  final Axis direction;

  ///Determines the order to lay children out horizontally and how to interpret start and end in the horizontal direction.
  final TextDirection? textDirection;

  ///screen breakpoint that you can customize
  final SpGridSize? gridSize;

  ///the grid container which is has children [SpGridItem]
  const SpGrid({
    Key? key,
    required this.children,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.decoration,
    this.spacing: 0,
    this.runSpacing: 0,
    this.alignment: WrapAlignment.start,
    this.verticalDirection: VerticalDirection.down,
    this.crossAlignment: WrapCrossAlignment.start,
    this.runAlignment: WrapAlignment.start,
    this.direction: Axis.horizontal,
    this.textDirection,
    this.gridSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SpGridSize spGridSize = gridSize ??
        SpGridSize(
          xs: 0,
          sm: 600,
          md: 960,
          lg: 1280,
          xl: 1920,
        );
    return Padding(
      padding:
          EdgeInsets.only(left: alignment == WrapAlignment.start ? spacing : 0),
      child: Container(
        width: width,
        padding: padding,
        margin: margin,
        height: height,
        decoration: decoration,
        child: LayoutBuilder(builder: (ctx, cs) {
          double width = MediaQuery.of(context).size.width;
          print(width);
          return Wrap(
            spacing: spacing,
            alignment: alignment,
            runSpacing: runSpacing,
            verticalDirection: verticalDirection,
            crossAxisAlignment: crossAlignment,
            runAlignment: runAlignment,
            direction: direction,
            textDirection: textDirection,
            children: List.generate(
              children.length,
              (i) => Container(
                padding: children[i].padding,
                alignment: children[i].aligment,
                width: (width >= spGridSize.xs && width < spGridSize.sm
                        ? cs.maxWidth * (children[i].xs / 12)
                        : width >= spGridSize.sm && width < spGridSize.md
                            ? cs.maxWidth *
                                ((children[i].sm ?? children[i].xs) / 12)
                            : width >= spGridSize.md && width < spGridSize.lg
                                ? cs.maxWidth *
                                    ((children[i].md ??
                                            children[i].sm ??
                                            children[i].xs) /
                                        12)
                                : width >= spGridSize.lg &&
                                        width <= spGridSize.xl
                                    ? cs.maxWidth *
                                        ((children[i].lg ??
                                                children[i].md ??
                                                children[i].sm ??
                                                children[i].xs) /
                                            12)
                                    : cs.maxWidth *
                                        ((children[i].xl ??
                                                children[i].lg ??
                                                children[i].md ??
                                                children[i].sm ??
                                                children[i].xs) /
                                            12)) -
                    spacing,
                child: children[i].child,
                decoration: children[i].decoration,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class SpGridItem {
  ///grid at extra small screen. the range is `1-12`
  final int xs;

  ///grid at small screen. the range is `1-12` if null it will following `xs`
  final int? sm;

  ///grid at medium screen. the range is `1-12` if null it will following the bottom of it
  //////i.e. following `sm` ?? following `xs`
  final int? md;

  ///grid at large screen. the range is `1-12` if null it will following the bottom of it,
  ///i.e. following `md` ?? following `sm` ?? following `xs`
  final int? lg;

  ///grid at extra large screen. the range is `1-12` if null it will following `xs`
  ///i.e. following `lg` ?? following `md` ?? following `sm` ?? following `xs`
  final int? xl;

  ///Empty space to inscribe inside the [decoration]. The [child], if any, is placed inside this padding.
  final EdgeInsetsGeometry? padding;

  ///Align the [child] within the container.
  final AlignmentGeometry? aligment;

  ///Child widget inside this element tree
  final Widget child;

  ///The decoration to paint behind the child.
  final BoxDecoration? decoration;

  /// The item of the `SpGrid`
  const SpGridItem({
    Key? key,
    this.xs: 12,
    this.sm,
    this.md,
    this.lg,
    this.padding,
    this.aligment,
    this.xl,
    required this.child,
    this.decoration,
  });
}

class SpGridSize {
  ///extra small screen [maximum] pixel
  final double xs;

  /// small screen [maximum] pixel
  final double sm;

  ///medium screen definition
  final double md;

  ///large screen definition
  final double lg;

  ///large screen definition
  final double xl;

  ///this is screen break point that you can declare your own
  SpGridSize({
    this.xs: 0,
    this.sm: 600,
    this.md: 960,
    this.lg: 1280,
    this.xl: 1920,
  });
}
