import 'package:flutter/material.dart';

import 'Contato.dart';
import 'PrecoBitcoin.dart';
import 'TelaGasolinaAlcool.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  void _abrirEmpresa(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TelaGasolinaAlcool()));
  }

  void _abrirBitCoin(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PrecoBitcoin()));
  }

  void _abrirContato(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Contato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Aplicativo do Adrian"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: _abrirContato,
              child: Image.asset(
                "imagens/logoArp.png",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset(
                        "imagens/gasolina.jpg",
                    ),
                  ),

                  GestureDetector(
                    onTap: _abrirBitCoin,
                    child: Image.asset(
                      "imagens/bitcoin.jpg",
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}
