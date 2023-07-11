import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Row(
              children: [Text("Photo Page")],
            )
          ]),
        ),
      ),
    );
  }
}
