
import 'package:flutter_tdd/features/base/domain/entites/base_enum.dart';
import 'package:flutter_tdd/features/base/domain/entites/selected_cat_entity.dart';


class AgentsFilterEntity{
  FilterAgents? filterAgents;
  SelectedCatEntity? filterSpeciality;
  AgentsSortBy? filterSortBy;

  AgentsFilterEntity({this.filterAgents, this.filterSpeciality, this.filterSortBy});
}