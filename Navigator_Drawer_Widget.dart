import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigatorDrawerWiget extends StatelessWidget {
  const NavigatorDrawerWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            padding: const EdgeInsets.fromLTRB(80, 100, 0, 0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(42, 147, 110, 1),
            ),
            child: Text(
              'ACESSAR O MINICURSO',
            ),
          ),
          const ListTile(
            // textColor: Colors.black,
            title: Text('EDUCAÇÃO FINANCEIRA'),
          ),
          const ListTile(
            title: Text('Tópico I'),
            // onTap: () {},
          ),
          const ListTile(
            title: Text('Tópico II'),
          ),
          const ListTile(
            title: Text('Tópico III'),
          ),
          const ListTile(
            title: Text('Tópico IV'),
          ),
          const ListTile(
            title: Text('Tópico V'),
          ),
          const ListTile(
            title: Text('Tópico VI'),
          ),
          const ListTile(
            title: Text('Tópico VII'),
          ),
          const ListTile(
            title: Text('Tópico VIII'),
          ),
          const ListTile(
            title: Text('Tópico IX'),
          ),
          const ListTile(
            title: Text('Tópico X'),
          ),
          const ListTile(
            title: Text('Tópico XI'),
          ),
          const ListTile(
            title: Text('Tópico XII'),
          ),
          const ListTile(
            title: Text('Tópico XIII'),
          ),
          const ListTile(
            title: Text('Tópico XIV'),
          ),
          const ListTile(
            title: Text('Tópico Sobre o Desenvolvedor'),
          ),
        ],
      ),
    );
  }
}
