import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child:InkWell(
          child: Container(
                height: 350,
                width: 350,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75),
                      bottomRight: Radius.circular(75),
                    ),
                    color: Colors.cyan),
                child: const Center(
                  child: Text(
                    "Note App",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple),
                  ),
                ),
              ),
        ),
        ),
    );
  }
}
