import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

/// Força o modo retrato em todo o app
/// Use esse Mixin no widget mainn main do app
/// Flutter's 'MyApp' deve estender o Stateless widget.
///
/// Chame `super.build(context)` no metodo main build()
/// Para habilitar o modo retrato em toda a aplicacao
mixin PortraitModeMixin on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return null;
  }
}

/// blocks rotation; sets orientation to: portrait
void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

