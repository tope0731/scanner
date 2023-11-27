import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  ImagePreview(this.file, this.label, this.confidence, {super.key});
  XFile file;
  var label;
  var confidence;

  @override
  State<ImagePreview> createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  @override
  Widget build(BuildContext context) {
    File picture = File(widget.file.path);
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Preview"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  height: 300,
                  width: 300,
                  child: Image.file(picture),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('This is a${widget.label}'),
                Text('Confidence level: ${widget.confidence}'),
              ],
            ),
            Container(
              child: Text('This is for the description'),
            )
          ],
        ),
      ),
    );
  }
}
