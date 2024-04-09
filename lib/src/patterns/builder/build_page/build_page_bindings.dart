import 'package:get/get.dart';
import './build_page_controller.dart';

class BuildPageBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(BuildPageController());
    }
}