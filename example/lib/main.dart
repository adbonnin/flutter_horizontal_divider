import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_horizontal_divider/flutter_horizontal_divider.dart';

void main() {
  runApp(HorizontalDividerExample());
}

class HorizontalDividerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Colors.blue;
    final size = 10.0;
    final thickness = 4.0;
    final padding = 20.0;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Horizontal divider example')),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...divided(
                context,
                title: 'Horizontal divider',
                scrollDirection: Axis.vertical,
                divider: HorizontalDivider(
                  color: color,
                  height: size,
                  thickness: thickness,
                  indent: padding,
                  endIndent: padding,
                ),
              ),
              SizedBox(height: 20),
              ...divided(
                context,
                title: 'Vertical divider',
                scrollDirection: Axis.horizontal,
                divider: VerticalDivider(
                  color: color,
                  width: size,
                  thickness: thickness,
                  indent: padding,
                  endIndent: padding,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> divided(
    BuildContext context, {
    String title,
    Axis scrollDirection,
    Widget divider,
  }) {
    return [
      Padding(
        padding: EdgeInsets.only(bottom: 5.0),
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38),
          ),
          child: ListView(
            scrollDirection: scrollDirection,
            children: [
              Icon(Icons.music_note, color: Colors.green),
              divider,
              Icon(Icons.pets, color: Colors.pink),
            ],
          ),
        ),
      )
    ];
  }
}
