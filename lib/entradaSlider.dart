import 'package:flutter/material.dart';

class entradaSlider extends StatefulWidget {
  @override
  _entradaSliderState createState() => _entradaSliderState();
}

class _entradaSliderState extends State<entradaSlider> {
  double _valor = 0;
  String label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tamanho Cerveja"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            Slider(
                value: _valor,
                min: 0,
                max: 1000,
                label: label,
                divisions: 5,
                onChanged: (double novoValor) {
                  setState(() {
                    _valor = novoValor;
                    label = "Valor selecionado " + novoValor.toString();
                  });
                  //print("Valor Selecionado: " + novoValor.toString());
                }),
            RaisedButton(
                child: Text("Salvar", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  print("Valor Selecionado: " + _valor.toString());
                })
          ],
        ),
      ),
    );
  }
}
