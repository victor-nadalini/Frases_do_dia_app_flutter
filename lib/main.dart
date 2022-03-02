import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

var _frases = [
  "Se você acredita que ninguem no mundo tenha salvação, tambem adimite que você não tem.",
  "Se ninguem mais é bom no mundo, comece por você.",
  "Sempre olhe e pense nos dois lados de qualquer situação",
  "Confiança é ser triado mas não se arrepender de ter confiado em alguem.",
  "Seja algo que as pessoas podem confiar e se apoiar, como um pilar.",
  "Se escolher um trabalho que faça e se divirta fazendo, estara sempre de ferias.",
  "Cair não é uma vergonha, cair e desistir é.",
  "Se qualquer ideal levemente baseado em algo santo for tratado como infantil ou louco, significa que é necessario ser mau para ser aceito."
];

var _frasesGerada = "Clique abaixo para gerar uma frase!!!";

void _gerarFrase(){
  var numeroSorteado = Random().nextInt(_frases.length);
  setState(() {
      _frasesGerada = _frases[numeroSorteado];
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child:Container(
        padding: EdgeInsets.all(16), 
        //width: double.infinity,
        /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Image.asset("assets/logo.png"),
             Text(
              _frasesGerada,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 17, 
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),

              ),
              ElevatedButton(
                child: const Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25, 
                    color: Colors.white, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green
                ), 
                onPressed: _gerarFrase,
              )
          ],
        ),
      ),
        )
    );
  }
}