import 'package:flutter/widgets.dart';

import '../helpers/formater_helper.dart';
import '../models/titulo.dart';

class AtualizaTituloController extends ChangeNotifier {
  final TextEditingController tagController = TextEditingController();
  final TextEditingController valorController = TextEditingController(text: '0,00');

  @override
  void dispose() {
    tagController.dispose();
    valorController.dispose();

    super.dispose();
  }

  Titulo getDadosTela() {
    return Titulo(
      tag: tagController.text.trim(),
      valor: formatStringToDecimal(valorController.text.trim()),
    );
  }

  salvaDados() {}
}
