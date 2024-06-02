import 'package:example_app/common/colors.dart';
import 'package:example_app/common/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Gap(110),
              Text(
                "Welcome".toUpperCase(),
                style: boldTextStyle.copyWith(
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(25),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 65,
                ),
                child: RichText(
                  text: TextSpan(
                    style: boldTextStyle.copyWith(
                      color: blackColor,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Serenity',
                        style: boldTextStyle,
                      ),
                      TextSpan(
                        text:
                            ', teman dalam perjalanan menuju keseimbangan mental Kamu.',
                        style: regularTextStyle,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Gap(65),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 30,
                          ),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 5,
                                    width: 70,
                                    color: primaryColor,
                                  )
                                ],
                              ),
                              Gap(60),
                              TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: primaryColor,
                                  ),
                                  hintText: "Email",
                                ),
                              ),
                              Gap(40),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.password_rounded,
                                    color: primaryColor,
                                  ),
                                  hintText: "Password",
                                ),
                              ),
                              Gap(100),
                            ],
                          ),
                        ),
                        const Gap(25),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: darkPrimaryColor,
                                foregroundColor: whiteColor,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 30,
                                )),
                            child: Text(
                              "Login".toUpperCase(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: darkPrimaryColor,
                ),
                child: Text(
                  "Sign Up".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/google.svg",
                      height: 30,
                    ),
                    const Gap(30),
                    SvgPicture.asset(
                      "assets/icons/phone.svg",
                      height: 30,
                    ),
                    const Gap(30),
                    SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
