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
    return ScaffoldPage(
      header: const PageHeader(
        title: Text('Consulta títulos'),
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 34,
                  width: 34,
                  child: Button(
                    onPressed: () {},
                    child: const Icon(FluentIcons.add),
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: TextBox(
                    suffix: Icon(FluentIcons.search),
                    header: 'Pesquisa',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: material.DataTable(
                  columns: const [
                    material.DataColumn(label: Text('id')),
                    material.DataColumn(label: Text('Tag')),
                    material.DataColumn(label: Text('Valor')),
                    material.DataColumn(label: Text('Pagar/Receber')),
                  ],
                  rows: const [
                    material.DataRow(
                      cells: [
                        material.DataCell(Text('1')),
                        material.DataCell(Text('Pagar Pessoa 1 banco')),
                        material.DataCell(Text('100,00')),
                        material.DataCell(Text('Pagar')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
