import 'dart:developer';

import 'package:design_patterns/src/patterns/builder/custon_componente/custom_componente.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './build_page_controller.dart';

class BuildPage extends GetView<BuildPageController> {
  const BuildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modelo Design Patterns: Build '),
      ),
      body: CustomComponente.build(
        text: 'Clicar',
        onPressed: () {
          log('Exemplo de Design Patterns: Build => Botão Pressionado!!');

        },
      ).build(context),
    );
  }
}
