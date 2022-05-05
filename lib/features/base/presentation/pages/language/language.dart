part of 'language_imports.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  final LanguageData languageData = LanguageData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Language"),
      body:
          BlocBuilder<GenericBloc<LanguagesEnum>, GenericState<LanguagesEnum>>(
        bloc: languageData.languagesCubit,
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            children: [
              BuildLanguageCard(
                lang: "English",
                onTap: () => languageData.languagesCubit
                    .onUpdateData(LanguagesEnum.English),
                selected: state.data == LanguagesEnum.English,
              ),
              BuildLanguageCard(
                lang: "French",
                onTap: () => languageData.languagesCubit
                    .onUpdateData(LanguagesEnum.French),
                selected: state.data == LanguagesEnum.French,
              ),
              BuildLanguageCard(
                lang: "German",
                onTap: () => languageData.languagesCubit
                    .onUpdateData(LanguagesEnum.German),
                selected: state.data == LanguagesEnum.German,
              ),
              BuildLanguageCard(
                lang: "Spanish",
                onTap: () => languageData.languagesCubit
                    .onUpdateData(LanguagesEnum.Spanish),
                selected: state.data == LanguagesEnum.Spanish,
              ),
              BuildLanguageCard(
                lang: "Italian",
                onTap: () => languageData.languagesCubit
                    .onUpdateData(LanguagesEnum.Italian),
                selected: state.data == LanguagesEnum.Italian,
              ),
              BuildLanguageCard(
                lang: "Russian",
                onTap: () => languageData.languagesCubit
                    .onUpdateData(LanguagesEnum.Russian),
                selected: state.data == LanguagesEnum.Russian,
              ),
              BuildLanguageCard(
                lang: "Japanese",
                onTap: () => languageData.languagesCubit
                    .onUpdateData(LanguagesEnum.Japanese),
                selected: state.data == LanguagesEnum.Japanese,
              ),
              BuildLanguageCard(
                lang: "Arabic",
                onTap: () => languageData.languagesCubit
                    .onUpdateData(LanguagesEnum.Arabic),
                selected: state.data == LanguagesEnum.Arabic,
              ),
            ],
          );
        },
      ),
    );
  }
}
