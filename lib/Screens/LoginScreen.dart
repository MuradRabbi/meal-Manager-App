import 'package:flutter/material.dart';
import 'package:meal_manager/Constants&Globals/Constant.dart';
import 'package:meal_manager/Widgets/CustomTextField.dart';

import 'SignUpScreen.dart';




class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60,),
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/image-logo-silver.png")
                  )
                ),
              ),
              SizedBox(height: 40,),
              _buildInputField(emailController, TextInputType.emailAddress, TextInputAction.next, false, "Email", ""),
              SizedBox(height: 15,),
              _buildInputField(passwordController, TextInputType.text, TextInputAction.done, true, "Password", "assets/images/hidePassword.png"),
              SizedBox(height: 40,),
              _buildForgetPassword(),
              SizedBox(height: 40,),
              _buildButton(),
              SizedBox(height: MediaQuery.of(context).size.height/5,),
              _buildSignUp(),

            ],
          ),
        ),
      ),
    );
  }


  Widget _buildInputField(
      TextEditingController controller ,
      TextInputType keyboardType ,
      TextInputAction textInputAction ,
      bool obscureText,
      String hintText,
      String iconImageLink
      ){
    return  CustomTextField(
      hint: hintText,
      obscureText: obscureText,
      textInputType: keyboardType,
      textInputAction: textInputAction,
      textEditingController: controller,
      iconImageLink: iconImageLink,
      fontSize: 14,
      fontFamily: AppFonts.syneMonoFont,
      context: context,


    );
  }

  Widget _buildForgetPassword(){
    return InkWell(
      onTap: (){},
      child: Text("Forget Password?", style: TextStyle(color:AppColors.contentBackgroundColor, fontSize:16, fontWeight: FontWeight.w400, fontFamily: AppFonts.syneMonoFont),),
    );
  }


  Widget _buildButton(){
    return InkWell(
      onTap: (){
        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MainScreen()));
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.contentBackgroundColor
        ),
        child: Text("Log in", style: TextStyle(color:AppColors.blueBackgroundColor, fontSize: 16, fontWeight: FontWeight.w500,fontFamily: AppFonts.syneMonoFont),),
      ),

    );
  }


  Widget _buildSignUp(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don’t have an account? ", style: TextStyle(color: AppColors.contentBackgroundColor, fontFamily:AppFonts.syneMonoFont, fontWeight:FontWeight.w400, fontSize: 18 ),),

          InkWell(
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUpScreen()));
              },
              child: Text("Sign Up.", style: TextStyle(color: AppColors.contentBackgroundColor, fontFamily:AppFonts.syneMonoFont, fontWeight:FontWeight.w400, fontSize: 18 ),)
          ),
        ],
      ),
    );
  }

}
