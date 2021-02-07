import 'package:firstaplication/src/pages/list_informations.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text("Registro"),
      ),
      body: Center(
          child: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 30.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Example@gmail.com',
                    labelText: 'Correo Electronico'),
                onChanged: (String str) {
                  user = str;
                },
                onSubmitted: (String str) {
                  user = str;
                },
              )),
          Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    hintText: 'Contraseña',
                    labelText: 'Contraseña'),
                onChanged: (String str) {
                  password = str;
                },
                onSubmitted: (String str) {
                  password = str;
                },
              )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              child: TextButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'User: $user \n Pass: $password',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.grey,
                      textColor: Colors.white,
                      fontSize: 11.0);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListInformations(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Ingresar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueAccent)),
              ))
        ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
