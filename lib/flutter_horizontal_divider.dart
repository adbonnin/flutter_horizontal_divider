import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Based on flutter [VerticalDivider]
/// A thin horizontal line, with padding on either side.
///
/// In the material design language, this represents a divider. Horizontal
/// dividers can be used in vertically scrolling lists, such as a
/// [ListView] with [ListView.scrollDirection] set to [Axis.vertical].
///
/// The box's total height is controlled by [height]. The appropriate
/// padding is automatically computed from the height.
///
/// See also:
///
///  * [VerticalDivider], the original vertical divider.
///  * [ListView.separated], which can be used to generate vertical dividers.
///  * <https://material.io/design/components/dividers.html>
class HorizontalDivider extends StatelessWidget {
  /// Creates a material design horizontal divider.
  ///
  /// The [height], [thickness], [indent], and [endIndent] must be null or
  /// non-negative.
  const HorizontalDivider({
    Key? key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  }) : assert(height == null || height >= 0.0),
       assert(thickness == null || thickness >= 0.0),
       assert(indent == null || indent >= 0.0),
       assert(endIndent == null || endIndent >= 0.0),
       super(key: key);

  /// The divider's height.
  ///
  /// The divider itself is always drawn as a horizontal line that is centered
  /// within the height specified by this value.
  ///
  /// If this is null, then the [DividerThemeData.space] is used. If that is
  /// also null, then this defaults to 16.0.
  final double? height;

  /// The thickness of the line drawn within the divider.
  ///
  /// A divider with a [thickness] of 0.0 is always drawn as a line with a
  /// width of exactly one device pixel.
  ///
  /// If this is null, then the [DividerThemeData.thickness] is used which
  /// defaults to 0.0.
  final double? thickness;

  /// The amount of empty space at the left of the divider.
  ///
  /// If this is null, then the [DividerThemeData.indent] is used. If that is
  /// also null, then this defaults to 0.0.
  final double? indent;

  /// The amount of empty space at the right of the divider.
  ///
  /// If this is null, then the [DividerThemeData.endIndent] is used. If that is
  /// also null, then this defaults to 0.0.
  final double? endIndent;

  /// The color to use when painting the line.
  ///
  /// If this is null, then the [DividerThemeData.color] is used. If that is
  /// also null, then [ThemeData.dividerColor] is used.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Divider(
  ///   color: Colors.deepOrange,
  /// )
  /// ```
  /// {@end-tool}
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final DividerThemeData dividerTheme = DividerTheme.of(context);
    final double height = this.height ?? dividerTheme.space ?? 16.0;
    final double thickness = this.thickness ?? dividerTheme.thickness ?? 0.0;
    final double indent = this.indent ?? dividerTheme.indent ?? 0.0;
    final double endIndent = this.endIndent ?? dividerTheme.endIndent ?? 0.0;

    return SizedBox(
      height: height,
      child: Center(
        child: Container(
          height: thickness,
          margin: EdgeInsetsDirectional.only(start: indent, end: endIndent),
          decoration: BoxDecoration(
            border: Border(
              top: Divider.createBorderSide(context, color: color, width: thickness),
            ),
          ),
        ),
      ),
    );
  }
}
