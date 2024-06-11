import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Texts(
    String name, Color mycolor, FontWeight fontweight, double fontsize) {
  return Text(
    name,
    style:
    TextStyle(color: mycolor, fontWeight: fontweight, fontSize: fontsize),
  );
}

Widget textfield(TextEditingController ct) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

    child: TextFormField(
      controller:ct ,

      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          color: Colors.black,
        ),
        border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(
              15,
            ),
            borderSide: BorderSide(color: Colors.grey, width: 4)),
        hintText: "Username",
        hintStyle: TextStyle(
            color: Colors.indigo, fontSize: 12, fontWeight: FontWeight.w200),
      ),
      style: TextStyle(
          color: Colors.indigo, fontSize: 12, fontWeight: FontWeight.w200),
    ),
  );
}
Widget textfieldpassword(TextEditingController ct) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: TextFormField(
      controller: ct,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.black,
        ),
        border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(
              15,
            ),
            borderSide: BorderSide(color: Colors.black, width: 3)),
        hintText: "Username",
        hintStyle: TextStyle(
            color: Colors.indigo, fontSize: 12, fontWeight: FontWeight.w200),
      ),
      style: TextStyle(
          color: Colors.indigo, fontSize: 12, fontWeight: FontWeight.w200),
    ),
  );
}
Widget button(double height, double width,String name, Color mycolor, FontWeight fontweight, double fontsize){
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      height: height,
      width: width,
      decoration: BoxDecoration(color: Colors.indigo,borderRadius:  BorderRadius.circular(10),),
      child: Center(
        child: Text(
          name,
          style:
          TextStyle(color: mycolor, fontWeight: fontweight, fontSize: fontsize),
        ),
      )

  );
}
