String? validateEmail({String? value}) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty || !regex.hasMatch(value)) {
    return 'Enter a valid email address';
  } else {
    return null;
  }
}

String? validatePasswords(String? val,String password){
  if(val!.isEmpty) {
    return 'Empty';
  }
  if(val != password) {
    return 'Not Match';
  }
  return null;
}


String? validateSignInPass(String? val){
  if(val!.isEmpty) {
    return 'Empty';
  }
  return null;
}