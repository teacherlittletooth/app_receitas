import 'package:flutter/material.dart';
import 'package:login/alert.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPopup extends StatelessWidget {
  final Uri site = Uri.parse( "https://play.google.com" );

  MyPopup({super.key});

  Future<void> abrirSite() async {
    if( !await launchUrl(site) ) {
      throw Exception( "Não foi possível abrir o site :( " );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          onTap: abrirSite,
          child: const Text("Avalie-nos")
        ),

        PopupMenuItem(
          onTap: () => showDialog(
            context: context,
            builder: (context) => const MyAlert()
          ),
          child: const Text("Sobre")
        ),
      ]
    );
  }
}