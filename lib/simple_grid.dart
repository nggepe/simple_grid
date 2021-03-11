library simple_grid;

import 'package:flutter/material.dart';

class SpGrid extends StatelessWidget {
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? height;
  final List<SpGridItem> children;
  final BoxDecoration? decoration;
  final double spacing;
  final double runSpacing;
  final WrapAlignment alignment;
  final VerticalDirection verticalDirection;
  final WrapCrossAlignment crossAlignment;
  final WrapAlignment runAlignment;
  final Axis direction;
  final TextDirection? textDirection;
  final SpGridSize? gridSize;
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
    SpGridSize spGridSize = gridSize ?? SpGridSize(xs: 570, sm: 768, md: 992, lg: 1200);
    return Container(
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
                width: width <= spGridSize.xs
                    ? cs.maxWidth * (children[i].xs / 12)
                    : width <= spGridSize.sm
                        ? cs.maxWidth * ((children[i].sm ?? children[i].xs) / 12)
                        : width <= spGridSize.lg
                            ? cs.maxWidth * ((children[i].md ?? children[i].xs) / 12)
                            : width <= spGridSize.md
                                ? cs.maxWidth * ((children[i].lg ?? children[i].xs) / 12)
                                : cs.maxWidth * ((children[i].lg ?? children[i].xs) / 12),
                child: children[i].child,
                decoration: children[i].decoration,
              ),
            ));
      }),
    );
  }
}

class SpGridItem {
  final int xs;
  final int? sm;
  final int? md;
  final int? lg;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? aligment;
  final Widget child;
  final BoxDecoration? decoration;

  const SpGridItem({
    Key? key,
    this.xs: 12,
    this.sm,
    this.md,
    this.lg,
    this.padding,
    this.aligment,
    required this.child,
    this.decoration,
  });
}

class SpGridSize {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  SpGridSize({
    this.xs: 570,
    this.sm: 768,
    this.md: 992,
    this.lg: 1200,
  });
}
