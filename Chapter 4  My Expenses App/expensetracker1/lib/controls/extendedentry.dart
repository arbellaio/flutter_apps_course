import 'package:flutter/material.dart';

class ExtendedEntry extends StatelessWidget {
  final String placeholder;
  Function onValueChange;
  ExtendedEntry(this.placeholder, this.onValueChange);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: [
          TextField(
            onChanged: (textValue) {
              onValueChange(textValue);
            },
            decoration: InputDecoration(
                labelText: placeholder
            ),
          )
        ],
      ),
    );
  }
}
