part of 'home_imports.dart';

class HomeData {

  final GenericBloc<int> homeTabCubit = GenericBloc(0);
  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  List<String> tabs = [
    Res.home,
    Res.discover,
    Res.dapps,
    Res.settings,
  ];

  List<String> tabsTxt = [
    "Home",
    "Discover",
    "Dapps",
    "Settings",
  ];

  void initBottomNavigation(TickerProvider ticker) {
    tabController = TabController(length: 3, vsync: ticker);
  }

  void animateTabsPages(int index, BuildContext context) {
    if (index != homeTabCubit.state.data) {
      homeTabCubit.onUpdateData(index);
      tabController.animateTo(index);
    }
  }

}