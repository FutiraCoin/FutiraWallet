part of'register_widgets_imports.dart';

class BuildProgressIndicator extends StatelessWidget {
  final double value;
  const BuildProgressIndicator({required this.value});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      color: MyColors.infoColor,
      value: value,
    );
  }
}
