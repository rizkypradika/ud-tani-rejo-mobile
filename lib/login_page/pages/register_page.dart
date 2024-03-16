import 'package:flutter/material.dart';
import 'package:project_mobile/login_page/components/button_large.dart';
import 'package:project_mobile/login_page/components/button_sosmed.dart';
import 'package:project_mobile/login_page/components/text_field_component.dart';
import 'package:project_mobile/login_page/components/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_mobile/login_page/pages/login_page.dart';

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
                  "DAFTAR SEKARANG",
                  style: TextStyle(
                    fontSize: 40,
                    color: clWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Daftarkan Akun anda ke UD TANI REJO MOBILE",
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
                  hintText: "Username",
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kata Sandi",
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
              ButtonLarge(
                title: "Daftar",
                onPressed: () {
                  // Navigasi ke halaman LoginPage dengan animasi
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration:
                          Duration(milliseconds: 500), // Durasi animasi
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          LoginPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 98,
                    child: Image.asset("assets/images/line_left.png"),
                  ),
                  Text(
                    "Atau Daftar Menggunakan",
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
