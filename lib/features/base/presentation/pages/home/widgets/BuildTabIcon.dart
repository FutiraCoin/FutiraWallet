part of 'home_widgets_imports.dart';

class BuildTabIcon extends StatelessWidget {
  final int index;
  final bool active;
  final HomeData homeData;
  const BuildTabIcon({required this.index, required this.active, required this.homeData});

  @override
  Widget build(BuildContext context) {
    Color color = active ? MyColors.primary : MyColors.black;
    return Column(
      children: [
        SizedBox(height: 4),
        SvgPicture.asset(
          homeData.tabs[index],
        ),
        SizedBox(height: 2),
        MyText(title: homeData.tabsTxt[index] , color: color, size: 12)
      ],
    );
  }
}
