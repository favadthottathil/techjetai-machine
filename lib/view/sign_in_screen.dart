import 'package:flutter/material.dart';
import 'package:techjetai/utils/res/colors.dart';
import 'package:techjetai/utils/res/sizedbox.dart';
import 'package:techjetai/utils/res/text_styles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
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
          ],
        ),
      ),
    );
  }
}
