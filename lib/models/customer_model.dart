class Customer {
  final int id;
  final String name;
  final String phone;
  final String? email;
  final String? place;
  final String? description;

  Customer({
    required this.name,
    required this.id,
    required this.phone,
    this.email,
    this.place,
    this.description,
  });
}
