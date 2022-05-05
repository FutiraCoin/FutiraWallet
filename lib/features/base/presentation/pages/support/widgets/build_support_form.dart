part of 'support_widgets_imports.dart';

class BuildSupportForm extends StatelessWidget {
  final SupportData supportData;

  const BuildSupportForm({Key? key, required this.supportData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: supportData.formKey,
        child: Flexible(
          child: ListView(
            padding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            children: [
              MyText(title: "Your Name", color: MyColors.blackOpacity, size: 10),
              GenericTextField(
                controller: supportData.name,
                fieldTypes: FieldTypes.normal,
                contentPadding:  EdgeInsets.zero,
                margin: const EdgeInsets.symmetric(vertical: 10),
                type: TextInputType.name,
                action: TextInputAction.next,
                validate: (value) => value?.validateEmpty(),
              ),
              MyText(title: "Your Wallet Name", color: MyColors.blackOpacity, size: 10),
              GenericTextField(
                controller: supportData.walletName,
                fieldTypes: FieldTypes.normal,
                contentPadding:const EdgeInsets.symmetric(horizontal: 15),
                hint: "1 FUT",
                margin: const EdgeInsets.symmetric(vertical: 10),
                type: TextInputType.name,
                action: TextInputAction.next,
                validate: (value) => value?.validateEmpty(),
              ),
              MyText(title: "Your Message", color: MyColors.blackOpacity, size: 10),
              GenericTextField(
                controller: supportData.msg,
                fieldTypes: FieldTypes.rich,
                max: 8,
                contentPadding:const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(vertical: 10),
                type: TextInputType.name,
                action: TextInputAction.next,
                validate: (value) => value?.validateEmpty(),
              ),
            ],
          ),
        ),);
  }
}
