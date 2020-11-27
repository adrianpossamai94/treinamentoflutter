import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PrecoBitcoin extends StatefulWidget {
  @override
  _PrecoBitcoinState createState() => _PrecoBitcoinState();
}

class _PrecoBitcoinState extends State<PrecoBitcoin> {

  String _preco = "0,00";

  void _recuperaPreco() async{
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);
    print(retorno);
    print(retorno);
    setState(() {
      _preco = retorno["BRL"]["buy"].toString();
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Preço do Bitcoin do Adrian"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/bitcoin.png"),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "R\$ " + _preco,
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
              ),
              RaisedButton(
                child: Text(
                  "Atualizar",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                color: Colors.orange,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                onPressed: _recuperaPreco,
              )
            ],
          ),
        ),
      ),
    );
  }
}
