class SignInModel {
  String? _password;
  String? _email;

  SignInModel({String? password, String? email}) {
    if (password != null) {
      this._password = password;
    }
    if (email != null) {
      this._email = email;
    }
  }

  String? get password => _password;
  set password(String? password) => _password = password;
  String? get email => _email;
  set email(String? email) => _email = email;

  SignInModel.fromJson(Map<String, dynamic> json) {
    _password = json['password'];
    _email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['password'] = this._password;
    data['email'] = this._email;
    return data;
  }
}