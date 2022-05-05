part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeData homeData = HomeData();

  @override
  void initState() {
    homeData.initBottomNavigation(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          controller: homeData.tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            MainScreen(),
            Container(),
            Container(),
            Settings(),
          ],
        ),
        bottomNavigationBar: BuildBottomNavigationBar(homeData: homeData),
      ),
    );
  }
}
