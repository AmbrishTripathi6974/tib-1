// // import 'package:crio_x_coding_ninjas/login_screen.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';

// class SplashScreenController extends GetxController {
// //   RxBool isLoggedIn = false.obs;
// //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;

// // // I can also use Init Function but I think not necessary, will remove it during the production and release time
// //   // @override
// //   // void onInit() async {
// //   //   ever(isLoggedIn, handleAuthStateChanges);
// //   //   isLoggedIn.value = firebaseAuth.currentUser?.uid != null;
// //   //   firebaseAuth.authStateChanges().listen((user) {
// //   //     isLoggedIn.value = user != null;
// //   //   });
// //   //   super.onInit();
// //   // }

// //   @override
// //   void onReady() async {
// //     ever(isLoggedIn, handleAuthStateChanges);
// //     isLoggedIn.value = firebaseAuth.currentUser?.uid != null;
// //     firebaseAuth.authStateChanges().listen((user) {
// //       isLoggedIn.value = user != null;
// //     });
// //     super.onReady();
// //   }

// //   handleAuthStateChanges(signIn) {
// //     if (signIn) {
// //       // Get.offNamed(() => HomeScreen());
// //       Get.off(const HomeScreen());
// //       // Get.offNamed(Routes.chatGpt);
// //       // Get.offNamed(Routes.errorScreen, arguments: firebaseAuth.currentUser);
// //     } else {
// //       Future.delayed(
// //           const Duration(milliseconds: 1500), () => Get.off(LogInScreen()));
// //     }
// //   }

//   @override
//   void onReady() {
//     Future.delayed(
//       const Duration(seconds: 2),
//       // () => Get.offNamed(Routes.homeScreen),
//     );

//     super.onReady();
//   }
// // Get.off()
//   // @override
//   // void onInit() {
//   //   Get.off(() => const HomeScreen());
//   //   super.onInit();
//   // }
// }
