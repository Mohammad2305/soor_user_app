import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../const/assets.dart';
import '../extensions/paddings.dart';
import '../themes/app_text_styles.dart';

class PasswordInput extends StatefulWidget {
  final String? inputTitle;
  final TextEditingController inputController;
  final String? Function(String?)? validator;

  const PasswordInput({
    super.key,
    this.inputTitle,
    required this.inputController,
    this.validator,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 3.h,
      children: [
        Text(
          widget.inputTitle == null
              ? "Password"
              : "${widget.inputTitle} Password",
          style: AppTextStyles.textFtS14FW500,
        ),
        TextFormField(
          controller: widget.inputController,
          obscureText: isSecure,
          validator: widget.validator,
          style: AppTextStyles.textFtS14FW500,
          decoration: InputDecoration(
            hintText: "*"*8,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  isSecure = !isSecure;
                });
              },
              child: Icon(
                isSecure ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
              ).onlyPadding(right: 16.w),
            ),
            suffixIconConstraints: BoxConstraints(maxWidth: 32.w),
          ),
        ),
      ],
    );
  }
}
