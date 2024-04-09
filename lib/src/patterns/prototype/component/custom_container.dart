
import 'package:design_patterns/src/patterns/prototype/component/custon_container_interface.dart';
import 'package:flutter/material.dart';

class CustomContainer implements CustonContainerInterface{
  
  Color color;

  CustomContainer(this.color);

  @override
  CustomContainer clone() {
    return CustomContainer(color);
  }
  
}