part of 'intro_screens_widgets_imports.dart';

class BuildIntroHeader extends StatelessWidget {
  final String image;
  const BuildIntroHeader({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          SvgPicture.asset(
            Res.welcomeHeader,
            height: 30,
            width: 100,
          ),
          SizedBox(height: 50),
          SvgPicture.asset(
            image,
            height: 250,
            width: MediaQuery.of(context).size.width*.9,
          ),
        ],
      ),
    );
  }
}
