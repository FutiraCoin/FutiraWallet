part of 'geometric_screen_imports.dart';

class GeometricScreen extends StatefulWidget {
  const GeometricScreen({Key? key}) : super(key: key);

  @override
  _GeometricScreenState createState() => _GeometricScreenState();
}

class _GeometricScreenState extends State<GeometricScreen> {
  final GeometricScreenData screenData = GeometricScreenData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  BuildGeometricHeader(),
                  BuildGeometricField(),

                ],
              ),
            ),
            DefaultButton(
              title: "Unlock",
              fontSize: 12,
              onTap: ()=> AutoRouter.of(context).push(HomeRoute()),
              margin: EdgeInsets.all(30),
            ),
          ],
        ),
      ),
    );
  }
}
