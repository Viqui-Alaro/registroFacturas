

import 'package:flutter/material.dart';


class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 100,),
                Text('SIAT en tus manos',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue)),
                SizedBox(height: 40,)
            ],
          ),
    
      ),
    );
  }
}