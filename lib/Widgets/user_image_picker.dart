import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({super.key , required this.onselectImage});

  final void Function(File pickedImage) onselectImage;

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {


  File? pickedImageFile;



  void pickImage()async {
    final pickedImage  = await ImagePicker().
    //pickVideo(source: ImageSource.camera );

    pickImage(source: ImageSource.camera ,
    maxWidth: 150,
    imageQuality: 50);
        
    if(pickedImage == null) {
      return;
    }
    
    setState(() {
      pickedImageFile = File((pickedImage.path));

    });

    widget.onselectImage(pickedImageFile!);
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey,
          foregroundImage: pickedImageFile != null
              ?FileImage(pickedImageFile!)
              :null,
        ),

        TextButton.icon(
          onPressed: pickImage,
          icon: const Icon(Icons.image),
          label: Text(
            'Add Image',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        )
      ],
    );
  }
}
