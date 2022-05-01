part of 'geometric_widgets_imports.dart';

class BuildGeometricHeader extends StatelessWidget {
  const BuildGeometricHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          Res.logo,
          color: MyColors.primary,
          width: 100,
        ),
        SizedBox(height: 10),
        MyText(
          title: "Welcome Back",
          color: MyColors.primary,
          size: 16,
          fontWeight: FontWeight.bold,
          letterSpace: 1.2,
        ),
      ],
    );
  }
}
