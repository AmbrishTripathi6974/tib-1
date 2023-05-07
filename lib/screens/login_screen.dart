// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import '../../home_screen/screens/home_screen.dart';

// class LogInScreen extends StatelessWidget {
//   LogInScreen({super.key});

//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   GoogleSignIn googleSignIn = GoogleSignIn();

//   signIn() async {
//     try {
//       final GoogleSignInAccount? googleSignInAccount =
//           await googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         final GoogleSignInAuthentication googleSignInAuthentication =
//             await googleSignInAccount.authentication;
//         if (googleSignInAuthentication.accessToken != null &&
//             googleSignInAuthentication.idToken != null) {
//           final AuthCredential credential = GoogleAuthProvider.credential(
//               accessToken: googleSignInAuthentication.accessToken,
//               idToken: googleSignInAuthentication.idToken);
//           try {
//             _auth.signInWithCredential(credential);
//             //ignore: avoid_print
//             print(
//                 'User Signed In with ${_auth.currentUser?.email} and ${_auth.currentUser?.displayName}');
//             // await auth_auth.signInWithCredential(credential);
//           } on FirebaseAuthException catch (e) {
//             //ignore: avoid_print
//             print(e);
//           }
//         }
//       }
//     } catch (e) {
//       //ignore: avoid_print
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             color: Colors.deepPurple[200],
//           ),
//           SvgPicture.asset(
//             'assets/images/itb_background.svg',
//             width: double.maxFinite,
//           ),
//           Positioned(
//             top: height * 0.8,
//             child: InkWell(
//               onTap: () {
//                 signIn();
//                 User? currentUser = FirebaseAuth.instance.currentUser;

//                 if (currentUser?.uid != null) {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) {
//                         return HomeScreen();
//                       },
//                     ),
//                   );
//                 }
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.all(10),
//                 height: 60,
//                 width: MediaQuery.of(context).size.width * 0.8,
//                 decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 4,
//                       color: Colors.black,
//                     ),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     SvgPicture.asset('assets/icons/google.svg'),
//                     const Text(
//                       'Continue with Google',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
