part of 'select_language_imports.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  final SelectLanguageData languageData = SelectLanguageData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        children: [
          BuildHeaderTitle(
            title: "Select Language",
            subTitle: "Your data appearance depend on selecting your country and language.",
          ),
          BuildLanguagesView(languageData: languageData)
        ],
      ),
      bottomNavigationBar: SelectLangButton(languageData: languageData),
    );
  }
}
