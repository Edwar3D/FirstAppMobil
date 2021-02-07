import 'package:flutter/material.dart';

import 'user_info.dart';

class ListInformations extends StatelessWidget {
  final listUsers = [
    "Juan",
    "Pedro",
    "Kevin",
    "Bryan",
    "Pablo",
    "Paty",
    "Damaris",
    "Ruperto",
    "Enriqueta",
    "Jonny",
    "Joaquin",
    "Xiomara",
    "Alejandra",
    "Vanesa",
    "Crisantemo"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("Lista de usuarios"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: listUsers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listUsers[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserInfo(
                      userName: listUsers[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
