import 'package:flutter/material.dart';
import 'package:login/home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  var _showPass = true;

  bool _login() {
    return _user.text == "" && _pass.text == "";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[

        Image.asset(
          "imagem.png",
          width: 250,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80),
          child: TextField(
            controller: _user,
            decoration: const InputDecoration(
              labelText: "Usuário",
              prefixIcon: Icon(Icons.person)
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80),
          child: TextField(
            obscureText: _showPass,
            controller: _pass,
            decoration: InputDecoration(
              labelText: "Senha",
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    _showPass = !_showPass;
                  });
                },
                icon: (_showPass) ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off)
              )
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100, bottom: 80),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                if( _login() ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHome())
                  );
                }
              },
              child: const Text("Entrar")
            ),
          ),
        )

      ],
    );
  }
}