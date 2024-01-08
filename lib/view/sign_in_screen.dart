import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techjetai/controller/auth_controller.dart';
import 'package:techjetai/utils/res/colors.dart';
import 'package:techjetai/utils/res/sizedbox.dart';
import 'package:techjetai/utils/res/text_styles.dart';
import 'package:techjetai/view/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final authController = Provider.of<AuthController>(context, listen: false);

      authController.listenForAuthChanges();
    });

    return Consumer<AuthController>(builder: (context, authController, _) {
      return authController.user != null
          ? const HomeScreen()
          : Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(500),
                child: AppBar(
                  leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: AppColors.kWhiteColor,
                      )),
                  flexibleSpace: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('Assets/sign_in_back.png'),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              ),
              body: Center(
                child: Column(
                  children: [
                    sizedboxh30,
                    Text(
                      'Dive in without delay',
                      style: AppTextStyle.textStyle1,
                    ),
                    sizedboxh10,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur. Neque et nulla et.',
                        style: AppTextStyle.textStyle6,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    sizedboxh30,
                    // SignInButton(Buttons.google, onPressed: authController.googleSignIn())
                    InkWell(
                      onTap: () => authController.googleSignIn(),
                      child: Container(
                        width: 185,
                        height: 50,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('Assets/google 4.png'),
                            Text(
                              'Sign In',
                              style: AppTextStyle.textStyle4,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
    });
  }
}
