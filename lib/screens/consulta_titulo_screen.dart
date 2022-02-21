import 'package:finance/components/consulta_component.dart';
import 'package:finance/screens/atualiza_titulo_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

class ConsultaTituloScreen extends StatefulWidget {
  const ConsultaTituloScreen({Key? key}) : super(key: key);

  @override
  _ConsultaTituloScreenState createState() => _ConsultaTituloScreenState();
}

class _ConsultaTituloScreenState extends State<ConsultaTituloScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: PageHeader(
        title: Text('Consulta títulos'),
      ),
      content: ConsultaComponent(
        telaAtualizacao: AtualizaTituloScreen(),
        columns: [
          material.DataColumn(label: Text('id')),
          material.DataColumn(label: Text('Tag')),
          material.DataColumn(label: Text('Valor')),
          material.DataColumn(label: Text('Pagar/Receber')),
        ],
      ),
    );
  }
}
