part of 'home_widgets_imports.dart';

class BuildBottomNavigationBar extends StatelessWidget {
  final HomeData homeData;

  const BuildBottomNavigationBar({required this.homeData});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: homeData.homeTabCubit,
      builder: (context, state) {
        return AnimatedBottomNavigationBar.builder(
          itemCount: 4,
          tabBuilder: (int index, bool isActive) {
            return BuildTabIcon(
              index: index,
              active: isActive,
              homeData: homeData,
            );
          },
          backgroundColor: MyColors.white,
          splashColor: MyColors.primary,
          activeIndex: state.data,
          gapLocation: GapLocation.none,
          splashSpeedInMilliseconds: 300,
          height: 60,
          onTap: (index) => homeData.animateTabsPages(index, context),
        );
      },
    );
  }
}
