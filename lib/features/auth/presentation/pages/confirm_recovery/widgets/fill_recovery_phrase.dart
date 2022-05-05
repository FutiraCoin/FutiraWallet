part of 'confirm_recovery_widgets_imports.dart';

class FillRecoveryPhrase extends StatelessWidget {
  const FillRecoveryPhrase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
            color: MyColors.greyWhite,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: GridView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 10),
        gridDelegate: GridFixedHeightDelegate(
          crossAxisCount: 3,
          height: 30,
          crossAxisSpacing: 50,
          mainAxisSpacing: 15,
        ),
        children: List.generate(
          12,
          (index) => Container(
            alignment: Alignment.center,
            width: 50,
            decoration: BoxDecoration(
              color: MyColors.greyWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: MyText(
              title: "${index + 1}.",
              size: 11,
              color: MyColors.blackOpacity,
            ),
          ),
          // Chip(
          //   backgroundColor: MyColors.greyWhite,
          //   padding: EdgeInsets.symmetric(horizontal: 5),
          //   label: MyText(
          //     alien: TextAlign.center,
          //     title:"${index + 1}.        ",
          //     size: 10,
          //     color: MyColors.black,
          //   ),
          // ),
        ),
      ),
    );
  }
}
