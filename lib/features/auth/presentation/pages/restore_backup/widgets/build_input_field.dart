part of 'restore_backup_widgets_imports.dart';

class BuildInputField extends StatelessWidget {
  final RestoreBackupData backupData;
  const BuildInputField({Key? key, required this.backupData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 5),
          child: MyText(title: 'Enter word phase', color: MyColors.black, size: 12),
        ),
        GenericTextField(
          fieldTypes: FieldTypes.rich,
          type: TextInputType.text,
          action: TextInputAction.done,
          validate: (value) => value?.noValidate(),
          hint: 'Enter word phase',
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          max: 4,
          controller: backupData.word,
          onChange: (value) => backupData.addWordsToList(),
        )
      ],
    );
  }
}
