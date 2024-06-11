
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../Provider/Provider_Screen.dart';
import '../constants/Widgets.dart';
import '../constants/mycolor.dart';




class Login_Screens extends StatelessWidget {
  const Login_Screens({super.key});



  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:cWhite,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Stack(
              children:[ Container(
                height: height*.5,
                width: width,
                decoration: BoxDecoration(  color: cpurple,borderRadius: BorderRadius.only(bottomRight: Radius.circular(150))),

                  child: Padding(
                    padding:  EdgeInsets.only(top: 100,left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts("Mobiz", cWhite, FontWeight.bold,30 ),
                        Texts("Sales", cWhite, FontWeight.w400,20 ),

                      ],
                    ),
                  ),

              ),
           ] ),
            Positioned(
                bottom: 100,
                child:  Container(
                  height: 350,
                  width: 250 ,
                  decoration: BoxDecoration(color:  Colors.white,borderRadius: BorderRadius.circular(15),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 10),
                        child: Texts("Log In", Colors.black, FontWeight.bold,20 ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,),
                        child: Texts("PLease sign in with your details", Colors.black, FontWeight.w100,12 ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Consumer<MainProvider>(
                          builder: (context,value,child) {
                            return textfield(value.usernameController);
                          }
                      ),
                      Consumer<MainProvider>(
                          builder: (context,value,child) {
                            return textfieldpassword(value.passwordController);
                          }
                      ),
                      Consumer<MainProvider>(
                          builder: (context,value,child) {
                            return InkWell(onTap: () {
                              value.loginUser();
                              // Navigator.push(context,  MaterialPageRoute(builder: (context) => product_List(),));
                            },
                                child: button(35,300,"Log In",Colors.white,FontWeight.w400,18 ));
                          }
                      ),

                    ],
                  ),
                ) )

          ],
        ),
      ),
    );
  }
}
