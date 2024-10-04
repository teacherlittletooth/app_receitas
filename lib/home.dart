import 'package:flutter/material.dart';
import 'package:login/bottomnav.dart';
import 'package:login/card.dart';
import 'package:login/drawer.dart';
import 'package:login/popup.dart';
import 'package:login/search.dart';
import 'package:login/story.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final List _dados = [
    { "n":"Fogaça"    , "i":"fogaca.jpeg"   },
    { "n":"Jacquin"   , "i":"jacquin.webp"  },
    { "n":"Remi"      , "i":"remi.jpg"      },
    { "n":"Linguine"  , "i":"linguine.jpg"  },
    { "n":"Paola C."  , "i":"paola.jpg"     },
  ];

  final List _img = [
    {"i" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNc4z0E_qiyYuE7b64ghkTyVSH1JBfK2z3wQ&s",                         "t" : "Salgados"   }, 
    {"i" : "https://www.kitano.com.br/wp-content/uploads/2019/08/SSP_2166-Legumes-abobrinha-italiana-com-salsa-e-cebolinha-1.jpg", "t" : "Regionais"  }, 
    {"i" : "https://www.tendaatacado.com.br/dicas/wp-content/uploads/2024/01/dia-do-churrasco-topo.jpg",                           "t" : "Aperitivos" }, 
    {"i" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqt704ov8PdKtBqXmro00vppjc5dFKDDipcQ&s",                         "t" : "Doces"      }, 
    {"i" : "https://lirp.cdn-website.com/33406c6e/dms3rep/multi/opt/Dia-do-Macarrao-f0ad929a-640w.jpeg",                           "t" : "Churrasco"  }, 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Receitas"),
        actions: <Widget>[
          MyPopup()
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
        
            const MySearch(),

            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _dados.length,
                itemBuilder: (context, item) {
                  return MyStory(
                    nome: _dados[item]["n"],
                    imagem: _dados[item]["i"],
                  );
                }
              ),
            ),
        
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
        
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _img.length,
                itemBuilder: (context, i) {
                  return MyCard(
                    url: _img[i]["i"],
                    titulo: _img[i]["t"]
                  );
                }
              ),
            ),
        
          ],
        ),
      ),

      bottomNavigationBar: const MyBottomNav(),

    );
  }
}