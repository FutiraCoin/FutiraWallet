part of 'geometric_widgets_imports.dart';


class BuildGeometricField extends StatelessWidget {
  const BuildGeometricField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 5),
          child: MyText(title: 'Password', color: MyColors.black, size: 12),
        ),
        GenericTextField(
          fieldTypes: FieldTypes.clickable,
          type: TextInputType.text,
          action: TextInputAction.done,
          validate: (value) => value?.noValidate(),
          hint: '',
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(Res.geometric, height: 25,),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        )
      ],
    );
  }
}
