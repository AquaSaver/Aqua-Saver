class AppLink {
  //192.168.171.69
  static const String server = "http://192.168.1.7/App";
  static const String imageststatic = "http://192.168.1.7/App/uploads";
// users
  static const String test = "$server/test.php";
// _____________________________auth________________________________________________________
  static const String signup = "$server/auth/signup.php";
  static const String verifyCodeSignup = "$server/auth/verifycode.php";
  static const String login = "$server/auth/login.php";
  static const String update = "$server/auth/update.php";

  // _____________________________forget password________________________________________________________

  static const String checkmail = "$server/forgetpassword/checkemail.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  // _____________________________________________________________________________________
}
// ___________________________________________________________________________________

//192.168.226.69