import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

// authentication service provider
final authServiceProvider = Provider((ref) {
  return AuthService(auth: FirebaseAuth.instance, googleSignIn: GoogleSignIn());
});

class AuthService {
  FirebaseAuth auth;
  GoogleSignIn googleSignIn;

  // cunstructor
  AuthService({
    required this.auth,
    required this.googleSignIn,
  });

  //sign in function
  signInWithGoogle() async {
    final user = await googleSignIn.signIn();
    final googleAuth = await user!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    final firebaseUser = await auth.signInWithCredential(credential);
    // Return the user details
  return firebaseUser.user;
  }

  //sign out function
  Future<void> signOut() async {
    await googleSignIn.signOut();
    await auth.signOut();
  }
}
