import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tdd/core/models/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserInitial());

  onUpdateUserData(UserModel model){
    emit(UserUpdateState(model: model, changed: !state.changed));
  }

}
