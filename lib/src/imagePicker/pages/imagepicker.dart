import 'package:flutter/material.dart';

class ImagePicker extends StatelessWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Choose Image/Camera'),
            IconButton(onPressed: () {}, icon: const Icon(Icons.image))
          ],
        ),
      ),
    );
  }
}
