part of'confirm_recovery_widgets_imports.dart';

class RecoveryPhraseChoice extends StatelessWidget {
  const RecoveryPhraseChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20),
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
          height: 20,
          crossAxisSpacing: 50,
          mainAxisSpacing: 15,
        ),
        children: List.generate(
          12,
              (index) => MyText(
                alien: TextAlign.center,
                title: "dolor",
                size: 11,
                color: MyColors.blackOpacity,
              ),
        ),
      ),
    );
  }
}
