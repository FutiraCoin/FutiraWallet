part of 'login_type_widgets_imports.dart';

class BuildLoginTypeActions extends StatelessWidget {
  const BuildLoginTypeActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          DefaultButton(
            title: "Restore from backup",
            onTap: ()=> AutoRouter.of(context).push(RestoreBackupRoute()),
            color: MyColors.white,
            fontSize: 12,
            borderColor: MyColors.primary,
            textColor: MyColors.primary,
          ),
          DefaultButton(
            title: "Create a new wallet",
            fontSize: 12,
            onTap: ()=>AutoRouter.of(context).push(SecureWalletRoute()),
          ),
        ],
      ),
    );
  }
}
