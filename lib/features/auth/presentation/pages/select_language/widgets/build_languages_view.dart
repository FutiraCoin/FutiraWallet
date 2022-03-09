part of 'select_language_widgets_imports.dart';

class BuildLanguagesView extends StatelessWidget {
  final SelectLanguageData languageData;

  const BuildLanguagesView({Key? key, required this.languageData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<Locale>, GenericState<Locale>>(
      bloc: languageData.langCubit,
      builder: (context, state) {
        return Column(
          children: [
            BuildLanguageFiled(
              title: "English",
              langCubit: languageData.langCubit,
              locale: Locale("en", "US"),
              selected: state.data,
            ),
            BuildLanguageFiled(
              title: "العربية",
              langCubit: languageData.langCubit,
              locale: Locale("ar", "EG"),
              selected: state.data,
            ),
          ],
        );
      },
    );
  }
}
