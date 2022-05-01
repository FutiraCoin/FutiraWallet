part of 'select_language_imports.dart';

class SelectLanguageData {

  GenericBloc<Locale> langCubit = GenericBloc(Locale("en","US"));
  final GenericBloc<Country?> countryCubit = GenericBloc(null);


  changeLanguageAction(BuildContext context){
    // AutoRouter.of(context).push(const IntroScreenRoute());
    context.read<LangCubit>().onUpdateLanguage(langCubit.state.data);
  }

  void showCountryCodePicker(BuildContext context) async {
    showCountryPickerSheet(context).then((value) {
      countryCubit.onUpdateData(value);
    });
  }


}