import 'dart:math';

import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  Set<String> lista = {"imagens/moeda_cara.png","imagens/moeda_coroa.png"};
  int index = Random().nextInt(2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd8c),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(lista.elementAt(index)),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  } ,
                  child:  Image.asset("imagens/botao_voltar.png"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
