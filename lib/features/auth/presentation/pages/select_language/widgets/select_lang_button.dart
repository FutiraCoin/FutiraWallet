part of 'select_language_widgets_imports.dart';

class SelectLangButton extends StatelessWidget {
  final SelectLanguageData languageData;

  const SelectLangButton({Key? key, required this.languageData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => languageData.changeLanguageAction(context),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: MyColors.primary,
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        ),
        padding: EdgeInsets.only(top: 15),
        child: MyText(
          title: "Continue",
          color: MyColors.white,
          size: 16,
          alien: TextAlign.center,
        ),
      ),
    );
  }
}
