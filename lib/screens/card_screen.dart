import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: const [

              ],
            ),
          ),
        ],
      ),
    );
 }
}