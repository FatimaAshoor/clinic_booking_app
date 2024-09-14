validInput(String? value){
  if (value!.isEmpty) {
    return "This Field Can't Be Empty";
  }
}

validEmailInput(String? val){
  if (val!.isEmpty) {
    return "This Field Can't Be Empty";
  }
  const String emailRegex = r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
  if (!RegExp(emailRegex).hasMatch(val)) {
    return " Enter Valid Email";
  }
}

validPasswordInput(String? value){
  if (value!.isEmpty) {
    return "This Field Can't Be Empty";
  }
  const String passwordRegex = r'^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&? "]).*$';
  if (!RegExp(passwordRegex).hasMatch(value)) {
    return " Enter Valid password";
  }
}