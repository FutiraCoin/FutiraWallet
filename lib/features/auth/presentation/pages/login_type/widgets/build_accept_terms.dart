part of 'login_type_widgets_imports.dart';

class BuildAcceptTerms extends StatelessWidget {
  const BuildAcceptTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: EdgeInsets.only(bottom: 30,top: 10),
        child: Row(
          children: [
            MyText(
              title:
                  "By creating new wallet, you agree to these",
              color: MyColors.blackOpacity,
              size: 10,
            ),
            SizedBox(width: 5),
            MyText(
              title: "Terms and Conditions",
              color: MyColors.primary,
              size: 10,
              decoration: TextDecoration.underline,
            ),
          ],
        ),
      ),
    );
  }
}
