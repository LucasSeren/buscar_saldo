// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'tela.dart';
import 'selecionaTemas.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with PortraitModeMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
      theme: ThemeData.dark(),
      home: menu(),

    );
  }
}
class menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Busca Saldo',

      home: Scaffold(
        appBar: AppBar(

          title: Text('Busca saldo Estela',
          ),
          centerTitle: true,),

        body: Center(

            child: Container(

              child: Column(

                  children: [
                    Image.asset('android/assets/imgs/logo.png',//imagem
                      alignment: Alignment.topCenter,),
                    Text('\n'
                        '', style: TextStyle(fontSize: 50))
                    ,
                    Text('Aplicativo para consultar saldo devedor',//texto
                      style: TextStyle(height: 1.2, fontSize: 18),),

                    Text(
                      'Insira seu CPF no campo abaixo para consultar seu saldo',//texto
                      textAlign: TextAlign.center,
                      style: TextStyle(height: 1.2, fontSize: 22),
                    ),

                    Container(
                        child: TextField(//campo de texto

                          keyboardType: TextInputType.number,//tipo de teclado a se utilizar no campo de texto
                          decoration: InputDecoration(//decoração do campo texto
                            border: OutlineInputBorder(),//borda do campo de texto
                            labelText: 'CPF',//etiqueta do campo de texto

                          ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(11)
                            ],
    )

                    )
                    ,
                    FlatButton(//botao
                      color: Colors.blue,//cor do botao
                      textColor: Colors.white,// cor do texto do botao
                      disabledColor: Colors.grey,//cor do botao desativado
                      disabledTextColor: Colors.black,//cor do texto do botao desativado
                      padding: EdgeInsets.all(8.0),//contorno do botao
                      splashColor: Colors.blueAccent,//cor do toque do botao
                      onPressed: () {//ir para a pagina com o resultado da pesquisa
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Resultado()));
                      },
                      child: Text(
                        "Consultar",//texto do botao
                        style: TextStyle(fontSize: 20.0),//tamanho do texto do botao
                      ),
                    )
                  ]),

            )

        ),

      ),
    );
  }
}
class Resultado extends StatelessWidget with selecionaTemas {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("resultado"),
      ),
      body: Center(
        child: Text('nome: null'' seu saldo é:'),
      ));



  }

}