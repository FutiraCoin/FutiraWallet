part of 'support_widgets_imports.dart';

class BuildSupportButton extends StatelessWidget {
  final SupportData supportData;

  const BuildSupportButton({Key? key, required this.supportData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Send",
      onTap: () {},
      btnKey: supportData.btnKey,
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
    );
  }
}
