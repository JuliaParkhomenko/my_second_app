import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text("Second App"),
              centerTitle: true,
              backgroundColor: Colors.orange),
          body: Stack(
            children: [
              Text("Пришло время сделать выбор...",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontFamily: 'OpenSans')),
              Center(
                  child:
                      Image(image: AssetImage("assets/images/my_bunny.png"))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      child: Text("Следовать за белым кроликом)",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 30, fontFamily: 'OpenSans')),
                      onPressed: () {
                        print("Удачного пути!");
                        exit(0);
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.grey)))
            ],
          ))));
}
