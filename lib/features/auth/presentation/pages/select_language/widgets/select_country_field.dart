part of 'select_language_widgets_imports.dart';

class SelectCountryField extends StatelessWidget {
  final SelectLanguageData languageData;

  const SelectCountryField({Key? key, required this.languageData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<Country?>, GenericState<Country?>>(
      bloc: languageData.countryCubit,
      builder: (context, state) {
        return GenericTextField(
          controller: TextEditingController(text: state.data?.name ?? ""),
          fieldTypes: FieldTypes.clickable,
          type: TextInputType.text,
          action: TextInputAction.done,
          label: "Select Your Country",
          prefixIcon: (state.data!=null)?SizedBox(
            height: 15,
            width: 15,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                state.data?.flag ?? "",
                package: countryCodePackageName,
              ),
            ),
          ):Container(),
          validate: (value) => value!.validateEmpty(),
          onTab: () => languageData.showCountryCodePicker(context),
          margin: EdgeInsets.symmetric(vertical: 20),
        );
      },
    );
  }
}
