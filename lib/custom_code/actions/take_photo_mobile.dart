// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:io';

final ImagePicker _picker = ImagePicker();
Future<JsonTakePhotoResponseStruct> takePhotoMobile() async {
  bool success = true;
  String message = "";
  String base64string = "";
  JsonTakePhotoResponseStruct response = JsonTakePhotoResponseStruct();
  try {
    String imagepath = "";
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imagepath = pickedFile.path;
      File imagefile = File(imagepath); //convert Path to File
      Uint8List imagebytes = await imagefile.readAsBytes(); //convert sto bytes
      base64string =
          await base64.encode(imagebytes); //convert bytes to base64 string
    }
  } catch (e) {
    success = false;
    message = e.toString();
  }
  response.success = success;
  response.message = message;
  response.base64String = base64string;

  return response;
}
