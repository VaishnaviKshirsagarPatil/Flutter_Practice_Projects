class Fort {
  final String name;
  final List<String> images;
  final String difficulty;
  final double rating;
  final String city;
  final String? entryInfo;

  Fort({
    required this.name,
    required this.images,
    required this.difficulty,
    required this.rating,
    required this.city,
    this.entryInfo,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'images': images,
      'difficulty': difficulty,
      'rating': rating,
      'city': city,
      'entryInfo': entryInfo,
      'createdAt': DateTime.now(),
    };
  }
}
