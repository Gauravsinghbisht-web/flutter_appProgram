import 'package:flutter/material.dart';

class ImageTogglePage extends StatefulWidget {
  const ImageTogglePage({super.key});

  @override
  State<ImageTogglePage> createState() => _ImageTogglePageState();
}

class _ImageTogglePageState extends State<ImageTogglePage> {
bool isFirstImage = true;

void changeImage() {
  setState(() {
    isFirstImage = !isFirstImage;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image change Program"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
             isFirstImage
             ? "sunset.jpg"
             : 'sea.jpg',
            height: 200,
            width: 200,
            ),

            SizedBox(
              height: 20),
              ElevatedButton(onPressed: changeImage,
               child: Text("change image"),
               ),
          ],
        ),
      ),
    );
  }
}