import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.black38,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                  "Contato",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),

              ),
              Padding(
                padding: EdgeInsets.only(top:30),
              ),
              Text(
                "E-mail: adrian.possamai@gmail.com",
                style: TextStyle(
                    fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
