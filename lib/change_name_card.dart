import 'package:flutter/material.dart';
import 'package:awesome_app/bg_image.dart';

class changeNameCard extends StatelessWidget {
  const changeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(myText,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Your Name",
              labelText: "Name",
            ),
          ),
        )
      ],
    );
  }
}
