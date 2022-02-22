import 'package:flutter/widgets.dart';

import '../models/trd.dart';

class AtualizaTRDController extends ChangeNotifier {
  final TextEditingController nomeController = TextEditingController();

  @override
  void dispose() {
    nomeController.dispose();
    super.dispose();
  }

  Trd getDadosTela() {
    return Trd(nome: nomeController.text.trim());
  }

  salvaDados() {}
}
