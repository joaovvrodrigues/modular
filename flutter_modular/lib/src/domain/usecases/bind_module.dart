import 'package:modular_core/modular_core.dart';
import 'package:result_dart/result_dart.dart';

import '../services/module_service.dart';

abstract class BindModule {
  ResultDart<Unit, ModularError> call(Module module, [String? tag]);
}

class BindModuleImpl implements BindModule {
  final ModuleService moduleService;

  BindModuleImpl(this.moduleService);

  @override
  ResultDart<Unit, ModularError> call(Module module, [String? tag]) {
    return moduleService.bind(module, tag);
  }
}
