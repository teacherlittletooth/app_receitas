import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var _value = false;

  void _changeTheme(bool t) {
    setState(() {
      _value = t;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.5,
      backgroundColor: Colors.yellow[100],
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
        
            Icon(
              Icons.person_pin,
              size: 140,
            ),
        
            Divider(
              indent: 25,
              endIndent: 25,
              thickness: 0.2,
              color: Colors.black,
            ),
        
            ListTile(
              leading: Icon(
                Icons.house,
                size: 20,
              ),
              title: Text("Restaurantes"),
              onTap: (){},
            ),
        
            ListTile(
              leading: Icon(
                Icons.fastfood_rounded,
                size: 20,
              ),
              title: Text("Salgados"),
              onTap: (){},
            ),
        
            ListTile(
              leading: Icon(
                Icons.cake,
                size: 20,
              ),
              title: Text("Doces"),
              onTap: (){},
            ),
        
            Divider(
              indent: 25,
              endIndent: 25,
              thickness: 0.2,
              color: Colors.black,
            ),
        
            SwitchListTile(
              activeColor: Colors.yellow,
              activeTrackColor: Colors.grey,
              title: Text("Mudar tema"),
              value: _value,
              onChanged: _changeTheme,
            ),
        
            Container(
              height: 200,
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.logout_rounded),
                    Text("Sair")
                  ]
                )
              ),
            )
        
          ],
        ),
      ),
    );
  }
}