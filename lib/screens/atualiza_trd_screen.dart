import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

class AtualizaTrdScreen extends StatefulWidget {
  const AtualizaTrdScreen({Key? key}) : super(key: key);

  @override
  _AtualizaTrdScreenState createState() => _AtualizaTrdScreenState();
}

class _AtualizaTrdScreenState extends State<AtualizaTrdScreen> {
  @override
  Widget build(BuildContext context) {
    return Button(
      onPressed: () {
        material.showDialog(
          context: context,
          builder: (context) {
            return ContentDialog(
              title: const Text('Cadastro de TRD'),
              content: Form(
                child: Column(
                  children: [],
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
