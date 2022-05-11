import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/data_sources/add_custom_wallet_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/helpers/di.dart';
import 'db/custom_wallet_db.dart';

@Injectable(as: AddCustomWalletDataSource)
class AddCustomWalletDataSourceImpl extends AddCustomWalletDataSource {
  var db = getIt<CustomWalletDb>();
  @override
  Future<Either<Failure, List<CustomWalletTableData>>> getCustomWallets(
      NoParams params) async {
    List<CustomWalletTableData> dbCustomWallets = await db.getCustomWallets();
    return Right(dbCustomWallets);
  }

  @override
  Future<Either<Failure, int>> addCustomWallet(
      CustomWalletTableCompanion params) async {
    int result = await db.insertCustomWallet(params);
    return Right(result);
  }
}
