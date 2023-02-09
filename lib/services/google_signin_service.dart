

import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {

 static GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
  ],
);

static Future<GoogleSignInAccount?> signInWithGoogle() async {

 try {
   
  final account = await _googleSignIn.signIn();

  print(account);

  // TODO idToken

  return account;

 } catch (e) {
  print('Error en google SignIn');
  print(e);
   return null;
 }

}

static Future signOut() async{
  await _googleSignIn.signOut();
}

}