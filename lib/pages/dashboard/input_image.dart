import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/pages/dashboard/resullt.dart';
import 'package:myapp/utils/colors.dart';
import 'package:image_picker/image_picker.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  File? _image;

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/elips_result.png'),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 21, vertical: 24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: const Offset(3, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 31, top: 31, right: 31),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Input your picture here',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(179, 0, 0, 0)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 44),
                                      child: GestureDetector(
                                          onTap: _pickImage,
                                          child: _image == null
                                              ? Image.asset('assets/input.png')
                                              : Image.file(
                                                  _image!,
                                                  height: 100,
                                                  width: 100,
                                                  fit: BoxFit.cover,
                                                )),
                                    ),
                                    const SizedBox(height: 31),
                                    const Text(
                                      'Please wait for activity recommendations to lift your spirits and boost your mood!',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black54),
                                      textAlign: TextAlign.justify,
                                    ),
                                    const SizedBox(height: 24),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ResultPage()),
                              );
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: kPrimaryColor),
                              width: double.infinity,
                              child: const Center(
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
