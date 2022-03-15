import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {

 
 final String string;
 final dynamic onPress;
 final Color color;
   MyMaterialButton({
    required this.string,
    required this.onPress,
    required this.color,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: 
           onPress
          ,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
           string,
          ),
        ),
      ),
    );
  }
}
