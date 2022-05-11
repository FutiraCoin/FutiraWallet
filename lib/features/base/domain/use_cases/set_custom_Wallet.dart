import '../../../../core/helpers/di.dart';
import '../../../../core/usecases/use_case.dart';
import '../../data/data_sources/db/custom_wallet_db.dart';
import '../repositories/base_repository.dart';

class SetCustomWallet implements UseCase<int?, CustomWalletTableCompanion> {
  @override
  Future<int?> call(CustomWalletTableCompanion params) async {
    var result = await getIt<BaseRepository>().addCustomWallet(params);
    return result.fold((l) => null, (r) => r);
  }
}
