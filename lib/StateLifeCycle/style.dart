import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
    filled: true,
    fillColor: Colors.white70,
    border: OutlineInputBorder(),
    labelText: label,
  );
}
TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );
}
ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(22),
      backgroundColor: Colors.white30,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
      )
  );
}