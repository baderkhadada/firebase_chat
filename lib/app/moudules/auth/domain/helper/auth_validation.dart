class AuthValidators {
  String? usernamevaledator(String? value) {
    if (value != null && value.length > 3) {
      return null;
    } else {
      return "user name must be more than 3";
    }
  }

  // Password validator
  String? passwordVlidator(String? val) {
    final String password = val as String;

    if (password.isEmpty || password.length <= 5) {
      return "passwprd must have more than 3";
    }
    return null;
  }

  // A simple email validator that  checks the presence and position of @
  String? emailValidator(String? value) {
    if (value != null) {
      final bool emailValid = RegExp(
              r'^[a-zA-Z\d.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z\d-]+(?:\.[a-zA-Z\d-]+)*$')
          .hasMatch(value);
      if (emailValid) {
        return null;
      }
    }
    return "Emial is Not Valid";
  }
}
