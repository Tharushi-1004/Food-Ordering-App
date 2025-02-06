import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // Get instance of FirebaseAuth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Get current user
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  // Sign in with email and password
  Future<UserCredential> signInWithEmailPassword(String email, String password) async {
     // try Sign user in
    try {
    
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } 
    //catch any error

    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign up
Future<UserCredential> signUpWithEmailPassword(String email, String password) async {
     // try Sign user in
    try {
    
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } 
    //catch any error

    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign out
  Future<void>signOut()async{
    return await _firebaseAuth.signOut();
  }

}




