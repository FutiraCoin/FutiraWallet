part of 'intro_widgets_imports.dart';

class BuildLoginNavigation extends StatelessWidget {
  const BuildLoginNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> AutoRouter.of(context).push(LoginRoute()),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Row(
          children: [
            MyText(title: "Already a user?", color: MyColors.black, size: 14,),
            SizedBox(width: 5),
            MyText(title: "Tap here to Login", color: MyColors.primary, size: 14,),
          ],
        ),
      ),
    );
  }
}
