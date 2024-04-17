import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_data.dart';
import 'register_page.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 0, 254),
        title: Text(
          'Registros',
          style: TextStyle(color: Color.fromARGB(225, 255, 255, 255)),
        ),
        actions: [
          Consumer<UserData>(
            builder: (context, userData, _) {
              final username = userData.username ?? ''; // Verificar se o nome de usuário está disponível
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Usuário logado: $username',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(225, 255, 255, 255),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Color.fromARGB(181, 80, 0, 254),
            width: 1.5,
            style: BorderStyle.solid,
          ),
          //color: Color.fromARGB(98, 80, 0, 254),
        ),
        child: Consumer<UserData>(
          builder: (context, userData, _) {
            return ListView.separated(
              itemCount: userData.persons.length,
              itemBuilder: (context, index) {
                final person = userData.persons[index];
                return ListTile(
                  title: Text('Nome: ${person.name}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email: ${person.email}'),
                      Text('Endereço: ${person.address}')
                    ],
                  ),
                  onTap: () {
                    // Do something when tapped
                  },
                );
              },
              separatorBuilder: (_, __) => const Divider(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}