import 'package:firebase_auth/firebase_auth.dart';

class authService {
  Future<bool> loginByEmail({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
      ); 
      return true;
    } on Exception catch (err) {
      print(err);
      return false;
    }
  }
}