import 'package:flutter/material.dart';
import 'package:unit_testing/generate_random_color.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _backgroundColor = 0xFF673A3A;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: ColoredBox(
          color: Color(_backgroundColor),
          child: const Center(
            child: Text(
              'Unit Testing!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _changeBackgroundColor() =>
      setState(() => _backgroundColor = generateRandomColorHexValue());
}
