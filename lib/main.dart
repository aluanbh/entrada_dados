import 'package:entrada_dados/CampoTexto.dart';
import 'package:entrada_dados/EntradaCheckbox.dart';
import 'package:entrada_dados/EntradaRadioButton.dart';
import 'package:entrada_dados/entradaSlider.dart';
import 'package:entrada_dados/entradaSwitch.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      //home: CampoTexto(),
      home: entradaSlider(),
    )
  );
}

