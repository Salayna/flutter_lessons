import 'package:flutter/material.dart';

void main() => runApp(MySolution());

class MySolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color = Colors.amber;

  void _updateColor() {
    setState(() {
      color = color == Colors.amber ? Colors.pink : Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: MagicSquare(
          onTap: _updateColor,
        ),
      ),
    );
  }
}

class MagicSquare extends StatelessWidget {
  final VoidCallback onTap;

  const MagicSquare({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
