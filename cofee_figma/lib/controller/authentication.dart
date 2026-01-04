// mvc/controller/auth_controller.dart
import 'package:firebase_auth/firebase_auth.dart';
import '../model/user_model.dart';

class AuthController {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel?> signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim());

      return UserModel(email: email);
    } catch (e) {
      print("Sign Up Error: $e");
      return null;
    }
  }
}
