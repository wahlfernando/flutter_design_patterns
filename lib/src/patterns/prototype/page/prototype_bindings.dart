import 'package:get/get.dart';
import 'prototype_controller.dart';

class PrototypeBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(PrototypeController());
    }
}