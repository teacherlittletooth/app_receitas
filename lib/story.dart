import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  String nome, imagem;
  
  MyStory({super.key, this.nome = "Usuário", this.imagem = "imagem.png"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[

          CircleAvatar(
            backgroundImage: AssetImage(imagem),
            maxRadius: 40,
          ),

          Text(nome)

        ],
      ),
    );
  }
}