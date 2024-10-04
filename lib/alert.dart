import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  const MyAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon( Icons.app_shortcut ),
      title: const Text("App Receitas"),
      content: const SingleChildScrollView(
        child: Text( "Desenvolvido por:\n"
                     "Donini\n\n"
                     "2024 - Nenhum direito reservado" ),
      ),
      actions: [
        TextButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: const Text("Ok")
        )
      ],
    );
  }
}