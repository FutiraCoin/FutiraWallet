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
      length: 3,
      child: Scaffold(
        body: TabBarView(
          controller: homeData.tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            RepeatedQuestions(),
            LocationAddress(),
            Container(),
          ],
        ),
        bottomNavigationBar: BuildBottomNavigationBar(homeData: homeData),
      ),
    );
  }
}
