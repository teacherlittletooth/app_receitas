import 'package:flutter/material.dart';
import 'package:login/bottomnav.dart';

class MySearch extends StatefulWidget {
  const MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: SearchBar(
          controller: _search,
          autoFocus: true,
          hintText: "Pesquisar...",
          leading: const Icon( Icons.search ),
          trailing: [
            IconButton(
              onPressed: () => _search.text = "",
              icon: const Icon( Icons.clear )
            )
          ],
        ),
    );
  }
}