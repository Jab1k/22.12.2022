class Name {
  int? count;
  String? gender;

  Name({
    required this.count,
    required this.gender,
  });

  factory Name.fromJson(Map data) {
    return Name(count: data['count'], gender: data['gender']);
  }
}