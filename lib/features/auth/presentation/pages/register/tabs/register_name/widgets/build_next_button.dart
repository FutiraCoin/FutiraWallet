part of'register_name_widgets_imports.dart';

class BuildNextButton extends StatelessWidget {
  final RegisterNameData registerName;
  const BuildNextButton({Key? key,required this.registerName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
        title: "Next",
        onTap: () {},
         btnKey: registerName.btnKey,
        margin: EdgeInsets.only(top: 40),
        fontSize: 16,
        height: 55
    );;
  }
}
