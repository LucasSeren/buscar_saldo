// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busca Saldo Estela',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Busca Saldo Estela'
          ),
        ),

        body: Center(
          child: Container(

            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Aplicativo para ver saldo devedor'),

                Text('Insira seu CPF no campo abaixo para consultar seu saldo',
                  style: TextStyle(height: 1.2, fontSize: 22),
          ),

              Container(
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'CPF',

            ),

    )
              )
                ,FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "Consultar",
                    style: TextStyle(fontSize: 20.0),
                  ),
                )]),

          )

        ),

      ),
    );
  }
}