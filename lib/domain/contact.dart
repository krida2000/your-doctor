class Contact {
  Contact({
    required this.name,
    required this.phone,
    required this.viber,
    required this.photoUrl,
    this.verified = true,
    required this.profession,
  });

  String name;

  String phone;

  String viber;

  String photoUrl;

  bool verified;

  ContactProfession profession;
}

enum ContactProfession {
  neurologist,
  gastroenterologist;

  String toLocalized() {
    switch (this) {
      case ContactProfession.neurologist:
        return 'Невролог';
      case ContactProfession.gastroenterologist:
        return 'Гастроентеролог';
    }
  }
}
