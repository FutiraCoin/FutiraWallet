part of 'home_widgets_imports.dart';

class BuildTabIcon extends StatelessWidget {
  final int index;
  final bool active;
  final HomeData homeData;
  const BuildTabIcon({required this.index, required this.active, required this.homeData});

  @override
  Widget build(BuildContext context) {
    Color color = active ? MyColors.primary : MyColors.grey;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Icon(
        homeData.tabs[index],
        size: 30,
        color: color,
      ),
    );
  }
}
