import 'dart:developer';

import 'package:design_patterns/src/patterns/adapter/adapter/adapter_use.dart';
import 'package:design_patterns/src/patterns/adapter/esternal_library/external_library.dart';
import 'package:design_patterns/src/patterns/sinlgeton/singleton_raiz.dart';
import 'package:design_patterns/src/utils/components/child_elevate_button.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    SingletonRaiz singletonRaiz = SingletonRaiz();
                    singletonRaiz.metodoExemplo();
                  },
                  child: const ChildElevateButton(title: 'Padrão Singleton'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ExternalLibrary externalLib = ExternalLibrary();
                    final Adapter adapter = Adapter(externalLib);

                    adapter.targetMethod();
                  },
                  child: const ChildElevateButton(title: 'Padrão Adapter'),
                ),
                ElevatedButton(
                  onPressed: () {
                    log('Padrão consiste em usar uma mesma abstração em implementações diferentes');
                    log('Verificar a implementação em /lib/src/pattners/tamplate_method');
                  },
                  child: const ChildElevateButton(title: 'Template Method'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/build_page');
                  },
                  child: const ChildElevateButton(title: 'Modelo Design Patterns: Build'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/prototype');
                  },
                  child: const ChildElevateButton(title: 'Modelo Design Patterns: Prototype'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
