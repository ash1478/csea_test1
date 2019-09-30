import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:avatar_glow/avatar_glow.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AvatarGlow(
        glowColor: Colors.black,
        endRadius: 120.0,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: Duration(milliseconds: 100),
        child: Material(
          elevation: 8.0,
          shape: CircleBorder(),
          child: GestureDetector(
            onTap: getImage,
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              radius: 75.0,
              child: _image == null
            ? Icon(Icons.person)
                : Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: FileImage(_image),fit: BoxFit.cover))
                ),

            ),
          ),
        ),
      ),

      ),
    );
  }
}