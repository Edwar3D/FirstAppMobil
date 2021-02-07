import 'package:firstaplication/src/pages/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textButton = TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Conitnuar",
          style: TextStyle(color: Colors.white),
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)),
    );
    return Scaffold(
      //appBar: AppBar(
      //backgroundColor: Color.fromRGBO(0, 0, 0, 0),
      // ),
      body: Center(
          child: Container(
              child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/BMO.gif',
            width: 200.0,
          ),
          Text(
            "Bienvenido a mi App con Flutter",
            style: TextStyle(fontSize: 15),
          ),
          textButton
        ],
      ))),
    );
  }
}
