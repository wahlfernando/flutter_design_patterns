import 'dart:math';

import 'package:flutter/material.dart';

class SingletonRaiz {
  
  static final SingletonRaiz _instance = SingletonRaiz._();
  
  int id = Random().nextInt(100);

  SingletonRaiz._();

  factory SingletonRaiz(){
    return _instance;
  }

  void metodoExemplo(){
    debugPrint(id.toString());
  }
}

// Uma instância de SingletonRaiz será criada na primeira chamada e, em chamadas subsequentes, a mesma instância será retornada, no caso do ID que foi colocado, sempre irá retornar o mesmo pois esta ocupando sempre a mesma posição da memória. 
