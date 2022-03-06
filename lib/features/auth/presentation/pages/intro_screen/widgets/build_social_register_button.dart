part of 'intro_widgets_imports.dart';

class BuildSocialRegisterButton extends StatelessWidget {
  final String icon;
  final String title;

  const BuildSocialRegisterButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: MyColors.black, width: .5),
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon, width: 20,height: 20,),
          SizedBox(width: 15),
          MyText(title: title, size: 15, color: MyColors.black)
        ],
      ),
    );
  }
}
