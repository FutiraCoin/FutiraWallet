part of 'apps_screen_imports.dart';

class AppsScreenData {

  final GenericBloc<List<AppModel>> appsCubit = GenericBloc([]);

  fetchData(BuildContext context, {bool refresh = true}) async {
    var result = await GetWalletApps().call(refresh);
    appsCubit.onUpdateData(result);
  }

}