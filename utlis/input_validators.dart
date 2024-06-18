extension inputValidators on String{

  bool get isEmailValid{
    final regExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regExp.hasMatch(this);
  }

  bool get isTelephoneValid{
    final regExp = RegExp(r"^\+?0[0-9]{10}$");
    return regExp.hasMatch(this);
  }

  bool get isPasswordValid{
    final regExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return regExp.hasMatch(this);
  }

  bool get isNameValid{
    final regExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return regExp.hasMatch(this);
  }

  bool get isNotEmpty{
    return this != null;
  }
}