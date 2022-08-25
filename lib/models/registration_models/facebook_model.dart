class FacebookModel {
  String? _id;
  String? _email;
  String? _firstName;
  String? _lastName;
  String? _photo;

  FacebookModel(
      {String? id,
        String? email,
        String? firstName,
        String? lastName,
        String? photo}) {
    if (id != null) {
      this._id = id;
    }
    if (email != null) {
      this._email = email;
    }
    if (firstName != null) {
      this._firstName = firstName;
    }
    if (lastName != null) {
      this._lastName = lastName;
    }
    if (photo != null) {
      this._photo = photo;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get photo => _photo;
  set photo(String? photo) => _photo = photo;

  FacebookModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _email = json['email'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['email'] = this._email;
    data['firstName'] = this._firstName;
    data['lastName'] = this._lastName;
    data['photo'] = this._photo;
    return data;
  }
}