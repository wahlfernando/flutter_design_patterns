
import 'dart:developer';

import 'package:design_patterns/src/patterns/adapter/esternal_library/external_library.dart';
import 'package:design_patterns/src/patterns/adapter/target/interface_target.dart';

class Adapter implements InterfaceTarget{

  final ExternalLibrary _externalLibrary;

  Adapter(this._externalLibrary);
  
  @override
  void targetMethod() {
    log('Passou pelo adapeter');
    _externalLibrary.externalMethod();
  }
  
}

// Agora podemos usar Adapter em seu aplicativo, permitindo que objetos que esperam uma instância de TargetInterface usem a funcionalidade da classe ExternalLibrary: