import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class backgroundimage extends StatelessWidget {
  const backgroundimage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: ( bounds)=> LinearGradient(colors: [Color.fromARGB(14, 19, 2, 2), Color.fromARGB(174, 4, 0, 7)],
        begin: Alignment.topCenter,
        end:  Alignment.bottomCenter,
      
      ).createShader(bounds), blendMode: BlendMode.hardLight,
    
      child: Container(
       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/login.jpg"), fit: BoxFit.cover , scale: 1.0)),
      ),
    );;
  }
}