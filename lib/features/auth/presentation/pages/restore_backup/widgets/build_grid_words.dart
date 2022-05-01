part of 'restore_backup_widgets_imports.dart';

class BuildGridWords extends StatelessWidget {
  const BuildGridWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 10),
      gridDelegate: GridFixedHeightDelegate(
          crossAxisCount: 3,
          height: 30,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
      ),
      children: List.generate(9, (index) => Chip(
        backgroundColor: MyColors.greyWhite,
        padding: EdgeInsets.symmetric(horizontal: 15),
        label: MyText(
          title: "Lorem",
          size: 10,
          color: MyColors.black,
        ),
      )),
    );
  }
}
