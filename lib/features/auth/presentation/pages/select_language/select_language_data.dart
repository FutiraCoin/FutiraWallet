part of 'select_language_imports.dart';

class SelectLanguageData {

  GenericBloc<Locale> langCubit = GenericBloc(Locale("en","US"));


  changeLanguageAction(BuildContext context){
    AutoRouter.of(context).push(const LoginRoute());
    context.read<LangCubit>().onUpdateLanguage(langCubit.state.data);
  }
}