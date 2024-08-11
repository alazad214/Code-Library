class FavItem {
  final String id;
  final String name;
  final String title;
  bool isFavorite;

  FavItem({
    required this.id,
    required this.name,
    required this.title,
    this.isFavorite = false,
  });
}
