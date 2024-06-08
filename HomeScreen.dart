import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_project/dialoge.dart';
import 'package:youtube_project/textfield.dart';

import 'button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showSuccessDialog(context, 'Congratulations', 'Your payemnt is '
                'successfull, please press the close icon.');
          }, child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
