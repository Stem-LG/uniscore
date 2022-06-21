import 'package:flutter/material.dart';

class NumberField extends StatelessWidget {
  final String label;

  NumberField({Key? key, required this.label, required this.onChange}) : super(key: key);

  final ValueChanged<String>? onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      margin: const EdgeInsets.all(10),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: label),
        onChanged: onChange,
      ),
    );
  }
}
