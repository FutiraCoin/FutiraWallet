class RegisterParams {
  String fullName;
  String email;
  String nikeName;
  String phone;
  String password;
  String code;

  RegisterParams(
      { this.fullName = "",
       this.phone = "",
       this.email = "",
       this.nikeName = "",
       this.password = "",
       this.code = ""});
}
