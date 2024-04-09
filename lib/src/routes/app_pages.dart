import 'package:design_patterns/src/home/home/home_bindings.dart';
import 'package:design_patterns/src/home/home/home_page.dart';
import 'package:design_patterns/src/patterns/builder/build_page/build_page.dart';
import 'package:get/get.dart';

import '../patterns/builder/build_page/build_page_bindings.dart';

part './app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(name: Routes.home, page: () => const HomePage(), binding: HomeBindings()),
    GetPage(name: Routes.buildPage, page: () => const BuildPage(), binding: BuildPageBindings()),
  ];
}
