import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 200,
      // child: Image(image: AssetImage("images/anby1.png")),
      child: Image.asset("images/anby1.png"),
    );
  }
}

// Provider Image ada 4 jenis
// 1. Network Image -> NetworkImage("https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_120x44dp.png")
// 2. Asset Image -> AssetImage("images/anby1.png")
// 3. File Image -> FileImage(File("images/anby1.png"))
// 4. Memory Image -> MemoryImage(base64Decode("iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg=="))