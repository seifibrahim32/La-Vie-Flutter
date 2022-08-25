class SignUpModel {
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _password;

  SignUpModel(
      {String? firstName, String? lastName, String? email, String? password}) {
    if (firstName != null) {
      _firstName = firstName;
    }
    if (lastName != null) {
      _lastName = lastName;
    }
    if (email != null) {
      _email = email;
    }
    if (password != null) {
      _password = password;
    }
  }

  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get password => _password;
  set password(String? password) => _password = password;

  SignUpModel.fromJson(Map<String, dynamic> json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _email = json['email'];
    _password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = _firstName;
    data['lastName'] = _lastName;
    data['email'] = _email;
    data['password'] = _password;
    return data;
  }
}