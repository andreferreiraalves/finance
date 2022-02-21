import 'package:finance/controllers/atualiza_titulo_controller.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

import '../helpers/formater_helper.dart';

class AtualizaTituloScreen extends StatefulWidget {
  const AtualizaTituloScreen({Key? key}) : super(key: key);

  @override
  _AtualizaTituloScreenState createState() => _AtualizaTituloScreenState();
}

class _AtualizaTituloScreenState extends State<AtualizaTituloScreen> {
  final AtualizaTituloController viewController = AtualizaTituloController();

  @override
  void dispose() {
    viewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Button(
      onPressed: () {
        material.showDialog(
          context: context,
          builder: (context) {
            return ContentDialog(
              title: const Text('Cadastro de Título'),
              content: Form(
                child: Column(
                  children: [
                    TextFormBox(
                      controller: viewController.tagController,
                      header: 'Tag',
                    ),
                    TextFormBox(
                      controller: viewController.valorController,
                      header: 'Valor',
                      inputFormatters: [formatInputValue()],
                    ),
                  ],
                ),
              ),
              actions: [
                Button(
                  child: const Text('Ok'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            );
          },
        );
      },
      child: const Icon(FluentIcons.add),
    );
  }
}
