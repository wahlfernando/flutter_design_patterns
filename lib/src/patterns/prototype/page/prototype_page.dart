import 'package:design_patterns/src/patterns/prototype/component/custom_container.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'prototype_controller.dart';

class PrototypePage extends GetView<PrototypeController> {
  const PrototypePage({super.key});

  @override
  Widget build(BuildContext context) {
    final prototypeContainer = CustomContainer(Colors.blue);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Padrão Design Patterns: Prototype'),
      ),
      body: Center(
        child: Column(
          children: [
            //Widget original:
            prottypeContainerWidget(prototypeContainer),
            const SizedBox(
              height: 20,
            ),
            // Clone do widget original com uma cor diferente
            cloneContainerWidget(prototypeContainer, Colors.green),
            const SizedBox(
              height: 20,
            ),
            // Clone do widget original com outra cor diferente
            cloneContainerWidget(prototypeContainer, Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget prottypeContainerWidget(CustomContainer prototypeContainer) {
    return Container(
      width: 100,
      height: 100,
      color: prototypeContainer.color,
      child: const Text('Container Original'),
    );
  }

  Widget cloneContainerWidget(
      CustomContainer prototypeContainer, Color newColor) {
    final cloneContainer = prototypeContainer.clone();
    cloneContainer.color = newColor;

    return Container(
      width: 100,
      height: 100,
      color: cloneContainer.color,
      child: const Text('Container Clonado'),
    );
  }
}
