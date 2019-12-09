import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
  
      Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        
        Image.network("https://cdn2.iconfinder.com/data/icons/popular-social-media-flat/48/Popular_Social_Media-07-128.png")
      ],),
      CircularProgressIndicator()
    ],);
  }
}