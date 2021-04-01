import 'package:flutter/material.dart';
import 'package:meal_manager/Constants&Globals/Constant.dart';


class CustomTextField extends StatelessWidget {

  final FormFieldSetter<String> onSaved;
  final String hint;
  final bool obscureText;
  final FormFieldValidator validator;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final double fontSize;
  final String fontFamily;
  final TextEditingController textEditingController;
  final String iconImageLink;
  BuildContext context;


  CustomTextField({
    this.onSaved,
    this.hint,
    this.obscureText,
    this.validator,
    this.textInputType,
    this.textInputAction,
    this.fontSize,
    this.fontFamily,
    this.textEditingController,
    this.iconImageLink,
    this.context

});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.contentBackgroundColor
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: textEditingController,
                keyboardType: textInputType,
                textInputAction: textInputAction,
                obscureText: obscureText,
                cursorColor: AppColors.blueBackgroundColor,
                decoration: InputDecoration(
                  isDense: true,

                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: TextStyle(color: AppColors.blueBackgroundColor, fontSize: 16 , fontFamily: AppFonts.syneMonoFont, fontWeight:FontWeight.w400 ),
                ),
              ),
            ),
            Container(
              height: 18.38,
              width:20,

              child: Image.asset(iconImageLink, color: AppColors.blueBackgroundColor),
            )
          ],
        )
    );
  }
}
