class User {
  final int id;
  final String name;
  final String address;

  User({
    required this.id,
    required this.name,
    required this.address,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> adr = json['address'];
    return User(
      id: json['id'],
      name: json['name'],
      address: '${adr['street']} ${adr['suite']} ${adr['city']}',
    );
  }
}
