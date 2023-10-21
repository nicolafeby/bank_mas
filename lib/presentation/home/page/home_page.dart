import 'package:flutter/material.dart';
import 'package:bank_mas/core/router/router_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: InkWell(
          onTap: () =>
              Navigator.pushNamed(context, RouterConstant.menuPage),
          child: Container(
            color: Colors.blue,
            height: 50,
            width: 100,
            child: const Center(
              child: Text(
                'Menu',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
