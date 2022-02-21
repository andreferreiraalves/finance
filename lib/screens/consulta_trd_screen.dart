import 'package:finance/screens/atualiza_trd_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

import '../components/consulta_component.dart';

class ConsultaTRDScreen extends StatefulWidget {
  const ConsultaTRDScreen({Key? key}) : super(key: key);

  @override
  _ConsultaTRDScreenState createState() => _ConsultaTRDScreenState();
}

class _ConsultaTRDScreenState extends State<ConsultaTRDScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: PageHeader(
        title: Text('Consulta TRD'),
      ),
      content: ConsultaComponent(
        telaAtualizacao: AtualizaTrdScreen(),
        columns: [
          material.DataColumn(label: Text('id')),
          material.DataColumn(label: Text('Descrição')),
        ],
      ),
    );
  }
}
