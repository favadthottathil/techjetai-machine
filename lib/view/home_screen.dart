import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:techjetai/controller/auth_controller.dart';
import 'package:techjetai/utils/res/colors.dart';
import 'package:techjetai/utils/res/sizedbox.dart';
import 'package:techjetai/utils/res/text_styles.dart';
import 'package:techjetai/view/sign_in_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<AuthController>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedboxh30,
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('Assets/locattion_icon.svg'),
                        sizedboxw10,
                        Text('Office', style: AppTextStyle.textStyle1),
                        SvgPicture.asset('Assets/arrow_down_icon.svg'),
                        const Spacer(),
                        IconButton(
                            onPressed: () => authController.logOut().then((status) {
                                  if (status == '') {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const SignInScreen(),
                                        ),
                                        (route) => false);
                                  }
                                }),
                            icon: const Icon(Icons.logout))
                      ],
                    ),
                    Text(
                      '38/A, 3rd Floor, 18th Main,22nd...',
                      style: AppTextStyle.textstyle2,
                    )
                  ],
                ),
              ),
              sizedboxh30,
              homeBanner(),
              sizedboxh20,
              const CustomTextField(),
              sizedboxh30,
              SizedBox(
                height: 120,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 83,
                          height: 83,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            color: AppColors.kBlackOpacity,
                          ),
                          child: Center(
                            child: Image.asset('Assets/pizza.png'),
                          ),
                        ),
                        sizedboxh10,
                        Text(
                          'Pizza',
                          style: AppTextStyle.textStyle4,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              sizedboxh10,
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Restaurant near you',
                    style: AppTextStyle.textStyle1,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: double.infinity,
                  height: 157,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('Assets/pizza_poster.png'),
                      ),
                      const Positioned(
                        left: 95,
                        top: 10,
                        child: Icon(
                          Icons.favorite_outline_sharp,
                          color: AppColors.kWhiteColor,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(Icons.more_vert),
                        ),
                      ),
                      Positioned(
                        left: 165,
                        top: 20,
                        child: SizedBox(
                          width: 150,
                          height: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Domino's Pizza",
                                style: AppTextStyle.textStyle4,
                              ),
                              sizedboxh10,
                              Row(
                                children: [
                                  const Text('4.2 '),
                                  SvgPicture.asset('Assets/star.svg'),
                                  const Text(' (10k+)'),
                                  sizedboxw10,
                                  const Text('25 mins'),
                                ],
                              ),
                              sizedboxh10,
                              const Text('Pizzas,Italian,Pastas'),
                              const Text('Pimple Saudager'),
                              sizedboxh10,
                              Text(
                                'FREE DELIVERY',
                                style: AppTextStyle.textStyle5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container homeBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.kBlackColor,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('Assets/burger_image.png'),
          ),
          Positioned(
            left: 20,
            top: 40,
            child: SvgPicture.asset('Assets/offer_text.svg'),
          ),
          Positioned(
            bottom: 25,
            left: 20,
            child: Container(
              width: 95,
              height: 32,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: AppColors.kOrangeColor,
              ),
              child: Center(
                child: Text(
                  'Order Now',
                  style: AppTextStyle.textStyle3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Restaurant name or a dish name....',
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.kOrangeColor,
          ),
          suffixIcon: Icon(
            Icons.filter_alt,
            color: AppColors.kGreyColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.kGreyColor,
            ),
          ),
        ),

        // style: AppStyle.poppins14,
      ),
    );
  }
}
