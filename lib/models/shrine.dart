enum Layer {
  sky,
  surface,
}

class Shrine {
  const Shrine({
    required this.shrineName,
    required this.title,
    required this.type,
    required this.location,
    required this.region,
    required this.mapLayer,
    required this.shrineQuest,
    required this.X,
    required this.Y,
    required this.Z,
});

  final String shrineName;
  final String title;
  final String type;
  final String location;
  final String region;
  final Layer mapLayer;
  final String shrineQuest;
  final int X;
  final int Y;
  final int Z;

}