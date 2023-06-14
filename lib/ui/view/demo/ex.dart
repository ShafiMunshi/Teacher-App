import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class Ex extends StatefulWidget {
  const Ex({super.key});

  @override
  State<Ex> createState() => _ExState();
}

class _ExState extends State<Ex> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerQuantity = TextEditingController();

  GlobalKey<FormState> key = GlobalKey();

  final CollectionReference _reference =
      FirebaseFirestore.instance.collection('students');

  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ex'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                ImagePicker imagePicker = ImagePicker();
                XFile? file =
                    await imagePicker.pickImage(source: ImageSource.camera);
                print('${file?.path}');
                print(_controllerName.text);
                String uniqueFileName =
                    DateTime.now().microsecondsSinceEpoch.toString();

                Reference referenceRoot = FirebaseStorage.instance.ref();
                Reference referenceDirImages = referenceRoot.child('images');
                Reference referenceToUpload =
                    referenceDirImages.child(uniqueFileName);

                try {
                  referenceToUpload.putFile(File(file!.path));
                  imageUrl = await referenceToUpload.getDownloadURL();
                  print('Image URL is : ${imageUrl}');
                } catch (err) {}

                // store the file
              },
              child: Icon(Icons.add)),
          TextFormField(
            controller: _controllerName,
            decoration: InputDecoration(hintText: 'Enter the name of the item'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the item name';
              }

              return null;
            },
          ),
          TextFormField(
            controller: _controllerQuantity,
            decoration:
                InputDecoration(hintText: 'Enter the quantity of the item'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the item quantity';
              }

              return null;
            },
          ),
          ElevatedButton(
              onPressed: () async {
                // if (imageUrl.isEmpty) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //       SnackBar(content: Text('Please upload an image')));

                //   return;
                // }
                String itemTitle = _controllerName.text;
                String _itemDecs = _controllerQuantity.text;

                // upload in firestore database
                Map<String, String> dataToSent = {
                  'name': itemTitle,
                  'description': _itemDecs,
                  'image': imageUrl,
                };

                _reference.add(dataToSent);
              },
              child: Text('Submit')),
        ],
      ),
    );
  }
}
