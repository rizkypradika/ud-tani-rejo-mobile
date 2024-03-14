import 'package:flutter/material.dart';
import 'package:project_mobile/login_page/components/button_large.dart';
import 'package:project_mobile/login_page/components/button_sosmed.dart';
import 'package:project_mobile/login_page/components/text_field_component.dart';
import 'package:project_mobile/login_page/components/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 20,
            right: 2,
            child: Image.asset(
              "assets/images/illustration_regs.png",
              width: 220,
            ),
          ),
          Positioned(
            bottom: -40,
            child: Image.asset("assets/images/background.png"),
          ),
          Image.asset("assets/images/objects__bg.png"),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            children: [
              const SizedBox(height: 240.0),
              Center(
                child: Text(
                  "Get Started Free",
                  style: TextStyle(
                    fontSize: 40,
                    color: clWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "welcome back we missed you",
                  style: TextStyle(
                    fontSize: 14,
                    color: clGrey,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Text(
                "Alamat Email",
                style: TextStyle(
                  fontSize: 14,
                  color: clGrey,
                ),
              ),
              Container(
                height: 55,
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: const TextFieldComponent(
                  hintText: "emailkamu@gmail.com",
                  prefixIconPath: "assets/svg/email.svg",
                ),
              ),
              Text(
                "Your Name",
                style: TextStyle(
                  fontSize: 14,
                  color: clGrey,
                ),
              ),
              Container(
                height: 55,
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: const TextFieldComponent(
                  hintText: "Username",
                  prefixIconPath: "assets/svg/person.svg",
                ),
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  color: clGrey,
                ),
              ),
              Container(
                height: 55,
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: clGrey,
                    ),
                    prefixIcon: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SvgPicture.asset(
                        "assets/svg/key.svg",
                        height: 18,
                        width: 17,
                      ),
                    ),
                    suffixIcon: Image.asset(
                      "assets/images/strong.png",
                      width: 100,
                      height: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: clWhite,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              ButtonLarge(title: "Sign Up", onPressed: () {}),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 98,
                    child: Image.asset("assets/images/line_left.png"),
                  ),
                  Text(
                    "Or sign up with",
                    style: TextStyle(
                      fontSize: 11,
                      color: clGrey,
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    child: Image.asset("assets/images/line_right.png"),
                  )
                ],
              ),
              const SizedBox(height: 18),
              const ButtonSosmed()
            ],
          )
        ],
      ),
    );
  }
}
