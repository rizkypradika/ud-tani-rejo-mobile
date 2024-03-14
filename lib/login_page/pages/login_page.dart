import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_mobile/login_page/components/button_large.dart';
import 'package:project_mobile/login_page/components/button_sosmed.dart';
import 'package:project_mobile/login_page/components/text_field_component.dart';
import 'package:project_mobile/login_page/components/background_screen.dart';
import 'package:project_mobile/login_page/components/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('assets/images/illustration.png'),
          const BackgroundScreen(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 42),
            child: Column(
              children: [
                const SizedBox(height: 265),
                Text(
                  "UD TANI REJO",
                  style: TextStyle(
                    fontSize: 40,
                    color: clWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Selamat Datang di UD TANI REJO",
                  style: TextStyle(
                    fontSize: 14,
                    color: clGrey,
                  ),
                ),
                const SizedBox(height: 22),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 14,
                          color: clGrey,
                        ),
                      ),
                      Container(
                        height: 55,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: const TextFieldComponent(
                          hintText: "Masukkan Username ",
                          prefixIconPath: "assets/svg/person.svg",
                        ),
                      ),
                      Text(
                        "Kata Sandi",
                        style: TextStyle(
                          fontSize: 14,
                          color: clGrey,
                        ),
                      ),
                      Container(
                        height: 55,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: const TextFieldComponent(
                          hintText: "Masukkan Kata Sandi",
                          prefixIconPath: "assets/svg/key.svg",
                          sufixIconPath: "assets/svg/eye_disable.svg",
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Lupa Kata Sandi?",
                            style: TextStyle(
                              fontSize: 11,
                              color: clGrey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      ButtonLarge(title: "Masuk", onPressed: () {}),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 98,
                            child: Image.asset("assets/images/line_left.png"),
                          ),
                          Text(
                            "atau Masuk Menggunakan",
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
