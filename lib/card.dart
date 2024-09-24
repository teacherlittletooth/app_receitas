import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  String url, titulo;
  
  MyCard({super.key, required this.url, this.titulo = "Receitas"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          
          Container(
            height: 140,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url)
              )
            ),
          ),

          const Divider(
            indent: 5,
            endIndent: 5,
          ),

          SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(titulo),
                Icon(Icons.arrow_back)
              ],
            ),
          )

        ]
      ),
    );
  }
}