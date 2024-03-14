import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:project_mobile/login_page/components/utils.dart';

class TextFieldComponent extends StatelessWidget {
  final String hintText;
  final String prefixIconPath;
  final String? sufixIconPath;
  const TextFieldComponent({
    Key? key,
    required this.hintText,
    required this.prefixIconPath,
    this.sufixIconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: clGrey,
        ),
        prefixIcon: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SvgPicture.asset(
            prefixIconPath,
            height: 18,
            width: 17,
          ),
        ),
        suffixIcon: sufixIconPath == null
            ? const SizedBox()
            : Container(
                margin: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SvgPicture.asset(
                  "$sufixIconPath",
                  height: 15,
                  width: 18,
                ),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: clWhite,
          ),
        ),
      ),
    );
  }
}
