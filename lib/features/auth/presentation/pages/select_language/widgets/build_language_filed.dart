part of 'select_language_widgets_imports.dart';

class BuildLanguageFiled extends StatelessWidget {
  final String title;
  final Locale locale;
  final Locale selected;
  final GenericBloc<Locale> langCubit;

  const BuildLanguageFiled({
    Key? key,
    required this.title,
    required this.locale,
    required this.selected,
    required this.langCubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MyColors.greyWhite),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(title: title, color: MyColors.black, size: 16),
          Radio<Locale>(
            value: locale,
            groupValue: selected,
            activeColor: MyColors.primary,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
