enum QuestType{
  mainQuest,
  sideQuest,
  sideAdventure,
  shrineQuest,
}

class Quest {

  const Quest({
    required this.id,
    required this.type,
    required this.region,
    required this.name,
    required this.giver,
});

  final int id;
  final QuestType type;
  final String region;
  final String name;
  final String giver;

}