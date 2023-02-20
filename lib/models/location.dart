class Location {
  final String street;
  final String city;
  final String state;
  final String country;
  final String timezone;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      timezone: json['timezone'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['street'] = street;
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['timezone'] = timezone;
    return data;
  }
}