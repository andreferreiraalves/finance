import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

class ConsultaComponent extends StatelessWidget {
  final Widget telaAtualizacao;
  final List<material.DataColumn> columns;

  const ConsultaComponent({
    Key? key,
    required this.telaAtualizacao,
    required this.columns,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                child: telaAtualizacao,
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
                columns: [...columns],
                rows: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
