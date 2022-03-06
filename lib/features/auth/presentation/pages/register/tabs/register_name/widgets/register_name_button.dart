part of 'register_name_widgets_imports.dart';

class RegisterNameButton extends StatelessWidget {
  final RegisterData registerData;

  const RegisterNameButton({Key? key, required this.registerData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEmpty = registerData.registerBloc.state.data.name.isEmpty;
    return AbsorbPointer(
      absorbing: isEmpty,
      child: DefaultButton(
          title: "Next",
          onTap: () => registerData.goNext(),
          color: isEmpty? MyColors.offWhite:MyColors.primary,
          textColor: isEmpty? MyColors.black:MyColors.white,
          margin: EdgeInsets.symmetric(horizontal: 20),
          fontSize: 16,),
    );
  }
}
