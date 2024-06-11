import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Provider_Screen.dart';
import '../constants/widgets.dart';

class product_List extends StatelessWidget {
  const product_List({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hieght = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Texts("Select Products", Colors.white, FontWeight.w100, 18),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
        ],
      ),
      body: Consumer<MainProvider>(
          builder: (context,value,child) {
            return ListView.builder(
              itemCount: value.data.length,
              itemBuilder: (context, index) {
                var items =value.data.length.toString();
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(0, 1))
                      ]),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Icon(Icons.image,color: Colors.black12,size: 50,)),
                      ),
                      Texts("", Colors.white, FontWeight.w100, 12),
                    ],
                  ),
                );
              },
            );
          }
      ),
    );
  }
}
