import 'package:flutter/material.dart';

class CharactersMovie extends StatelessWidget {
  const CharactersMovie({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('characters'),
      ),
      body: const Center(
        child: Text(
          'characters',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
