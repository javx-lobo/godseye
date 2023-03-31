class User {
  final String name;
  final int soulScore;
  // Add more properties as needed

  User({required this.name, required this.soulScore});

  User.wretch() : this(name: 'Wretch', soulScore: 0);

  User copyWith({String? name, int? soulScore}) {
    return User(
      name: name ?? this.name,
      soulScore: soulScore ?? this.soulScore,
    );
  }
}
