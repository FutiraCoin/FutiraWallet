import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';

import '../../../../core/errors/failures.dart';
import 'db/custom_wallet_db.dart';

abstract class AddCustomWalletDataSource {
  Future<Either<Failure, List<CustomWalletTableData>>> getCustomWallets(
      NoParams params);
  Future<Either<Failure, int>> addCustomWallet(
      CustomWalletTableCompanion params);
}
