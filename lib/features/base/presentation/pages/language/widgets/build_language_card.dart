part of 'language_widgets_imports.dart';

class BuildLanguageCard extends StatelessWidget {
  final String lang;
  final Function() onTap;
  final bool selected;

  const BuildLanguageCard(
      {Key? key,
      required this.lang,
      required this.onTap,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 5),
        shadowColor: MyColors.primary.withOpacity(.2),
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 17),
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: MyText(title: lang, color: MyColors.black, size: 10),
              ),
              Visibility(
                visible: selected,
                child: SvgPicture.asset(Res.selected,width: 18,height: 18,),
                replacement:  SvgPicture.asset(Res.unslected,width: 18,height: 18,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
