import 'package:finance/screens/consulta_titulo_screen.dart';
import 'package:finance/screens/consulta_trd_screen.dart';
import 'package:finance/screens/screen_1.dart';
import 'package:finance/screens/screen_2.dart';
import 'package:fluent_ui/fluent_ui.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        leading: Center(
          child: FlutterLogo(size: 25),
        ),
      ),
      pane: NavigationPane(
        header: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: DefaultTextStyle(
            style: FluentTheme.of(context).typography.title!,
            child: const Text('Flutter Desktop'),
          ),
        ),
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.apps_content),
            title: const Text('Títulos'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.a_a_d_logo),
            title: const Text('TRD'),
          ),
        ],
        selected: _currentIndex,
        displayMode: PaneDisplayMode.auto,
        onChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      content: NavigationBody(
        index: _currentIndex,
        children: const [
          ConsultaTituloScreen(),
          ConsultaTRDScreen(),
        ],
      ),
    );
  }
}
