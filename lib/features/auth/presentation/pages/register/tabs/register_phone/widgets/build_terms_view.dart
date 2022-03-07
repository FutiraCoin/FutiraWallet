part of 'register_phone_widgets_imports.dart';

class BuildTermsView extends StatelessWidget {
  final RegisterData registerData;

  const BuildTermsView({Key? key, required this.registerData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: registerData.termsCubit,
      builder: (context, state) {
        return ListTile(
          onTap: ()=> AutoRouter.of(context).push(TermsRoute()),
          trailing: Checkbox(
            value: state.data,
            onChanged: (value) => registerData.termsCubit.onUpdateData(value!),
            activeColor: MyColors.primary,
          ),
          title: MyText(
            title: "Accept terms and conditions to continue",
            color: MyColors.primary,
            size: 14,
          ),
          subtitle: MyText(
            title: "tap to show terms",
            color: MyColors.blackOpacity,
            size: 12,
          ),
        );
      },
    );
  }
}
