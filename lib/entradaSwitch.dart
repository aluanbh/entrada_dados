import 'package:flutter/material.dart';

class entradaSwitch extends StatefulWidget {
  @override
  _entradaSwitchState createState() => _entradaSwitchState();
}

class _entradaSwitchState extends State<entradaSwitch> {

  bool _escolhaUsuario = false;
  bool _escolhaConfiguracao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Receber notificações ?"),
                activeColor: Colors.amber,
                value: _escolhaUsuario,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),
            SwitchListTile(
                title: Text("Carregar imagens automaticamente ?"),
                activeColor: Colors.green,
                value: _escolhaConfiguracao,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaConfiguracao = valor;
                  });
                }
            ),
            RaisedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                onPressed: (){
                  print("Resultado " + _escolhaUsuario.toString() +
                  " - Resultado " + _escolhaConfiguracao.toString()
                  );
                }
            )
            
            
            /*
            Switch(
                value: _escolhaUsuario,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),
            Text("Receber notificações ?"),
            */
            
          ],
        ),
      ),
    );
  }
}
