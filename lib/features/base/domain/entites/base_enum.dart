enum FilterAgents{
  None,
  PremiumAgentsOnly,
  AllAgents
}

enum AgentsSortBy{
  None,
  NameAToZ,
  NameZToA,
  FollowersHighestFirst,
  FollowersLowestFirst,
}

enum MarketFilterAgents{
  None,
  Featured,
  AgentsOnly
}

enum MarketFilterSortBy{
  None,
  HighestFirst,
  LowestFirst,
  MostRecent,
  OldestFirst
}

enum ItemInformationCondition{
  None,
  LikeNew,
  LightlyUsed,
  Acceptable,
  
}

extension MarketFilterSortExtention on MarketFilterSortBy{

  String getValue(){
    switch(this){
      case MarketFilterSortBy.HighestFirst:
        return "Highest First";
      case MarketFilterSortBy.LowestFirst:
        return "Lowest First";
      case MarketFilterSortBy.MostRecent:
        return "Most Recent";
      case MarketFilterSortBy.OldestFirst:
        return "Oldest First";
      default:
        return "";
    }
  }

}

extension NarketFilterAgentsExtention on MarketFilterAgents{
  String getValue(){
    switch(this) {
      case MarketFilterAgents.AgentsOnly:
        return "Agents Only";
      case MarketFilterAgents.Featured:
        return "Featured";
      default:
        return "";
    }
  }
}


