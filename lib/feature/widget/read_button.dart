import 'package:flutter/material.dart';

class ReadButton extends StatelessWidget {
  String textValue;
   ReadButton({
    Key? key,
    required this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () { }, child: Text(textValue));
      
    
  }
}
