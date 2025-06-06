import 'package:modular_core/modular_core.dart';
import 'package:result_dart/result_dart.dart';

import '../services/route_service.dart';

abstract class SetArguments {
  ResultDart<Unit, ModularError> call(ModularArguments args);
}

class SetArgumentsImpl implements SetArguments {
  final RouteService service;

  SetArgumentsImpl(this.service);

  @override
  ResultDart<Unit, ModularError> call(ModularArguments args) {
    return service.setArguments(args);
  }
}
