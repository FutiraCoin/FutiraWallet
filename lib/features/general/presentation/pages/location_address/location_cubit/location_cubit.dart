import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tdd/features/general/domain/entities/location_entity.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

  onLocationUpdated(LocationEntity model){
    emit(LocationUpdated(model, state.changed));
  }

}
