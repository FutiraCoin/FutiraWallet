part of 'settings_widgets_imports.dart';

class BuildDarkMode extends StatefulWidget {
  final SettingsData settingsData;
  const BuildDarkMode({Key? key,required this.settingsData}) : super(key: key);

  @override
  State<BuildDarkMode> createState() => _BuildDarkModeState();
}

class _BuildDarkModeState extends State<BuildDarkMode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(title: "Dark mode", color: MyColors.black, size: 10),
          Spacer(),
          Container(
            width: 20,
            height: 20,
            child: BlocBuilder<GenericBloc<bool>,GenericState<bool>>(
              bloc: widget.settingsData.switchCubit,
              builder: (context,state){
                return Switch.adaptive(
                  value: state.data,
                  activeColor: MyColors.primary,
                  onChanged: (bool value) =>widget.settingsData.switchCubit.onUpdateData(!state.data),
                );
              },
            ),
          ),
          const SizedBox(width: 10,),
        ],
      ),
    );
  }
}
