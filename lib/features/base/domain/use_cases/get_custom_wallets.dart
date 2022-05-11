import '../../../../core/helpers/di.dart';
import '../../../../core/usecases/use_case.dart';
import '../../data/data_sources/db/custom_wallet_db.dart';
import '../repositories/base_repository.dart';

class GetCustomWallets extends UseCase<List<CustomWalletTableData>, NoParams> {
  @override
  Future<List<CustomWalletTableData>> call(NoParams params) async {
    var result = await getIt<BaseRepository>().getCustomWallets(params);
    return result.fold((l) => [], (r) => r);
  }
}
