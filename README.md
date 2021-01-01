# flutter_horizontal_divider

An horizontal divider for Flutter based on [VerticalDivider](https://api.flutter.dev/flutter/material/VerticalDivider-class.html).

## Supported platforms

* Flutter Android
* Flutter iOS
* Flutter web
* Flutter desktop

## Live preview

https://adbonnin.github.io/flutter_horizontal_divider/

Basic horizontal divider example :

![simple](https://raw.githubusercontent.com/adbonnin/flutter_horizontal_divider/main/doc/screenshots/basic.png)

## How to use

Create an `HorizontalDivider` widget :

```dart
class BasicExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HorizontalDivider(
      color: Colors.blue,
      height: 10.0,
      thickness: 4.0,
      indent: 20.0,
      endIndent: 20.0,
    );
  }
}
```