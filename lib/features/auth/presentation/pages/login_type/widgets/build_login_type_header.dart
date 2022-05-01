part of 'login_type_widgets_imports.dart';

class BuildLoginTypeHeader extends StatelessWidget {
  const BuildLoginTypeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Res.loginType_header,
      height: MediaQuery.of(context).size.height*.65,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,
    );
  }
}
