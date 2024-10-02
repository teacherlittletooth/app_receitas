import 'package:flutter/material.dart';
import 'dart:convert';

class MyRestaurant extends StatelessWidget {
  const MyRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurantes"),
      ),

      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("restaurantes.json"),
        builder: (context, snap) {
          List restaurantes = json.decode( snap.data.toString() );
          
          return ListView.builder(
            itemCount: restaurantes.length,
            itemBuilder: (context, item) {
              return ListTile(
                leading: Icon( Icons.restaurant ),
                title: Text( restaurantes[item]["nome"] ),
                subtitle: Text(
                  restaurantes[item]["endereco"] + "\n" +
                  restaurantes[item]["telefone"]
                ),
                isThreeLine: true,
                trailing: ( restaurantes[item]["foto"].toString().isEmpty ) ?
                          const Icon( Icons.store ) :
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage( restaurantes[item]["foto"] ),
                                fit: BoxFit.cover
                              )
                            ),
                          )
              );
            }
          );
        }
      ),
    );
  }
}