part of 'main_imports.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildMainAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 5),
        children: [
          BuildCurrentBalance(),
          MainScreenButtons(),
          MainScreenTokens(),
        ],
      ),
    );
  }
}
