part of 'select_language_widgets_imports.dart';

class BuildIntroHeader extends StatelessWidget {
  const BuildIntroHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Image.asset(Res.logo,width: 180,),
        ),
      ],
    );
  }
}
