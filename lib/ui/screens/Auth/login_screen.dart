import 'package:clinic_booking_app/constants/validations.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custombutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = 40;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  icon: Icons.email_outlined,
                  hintText: 'Enter Your Email',
                  hintColor: AppColors.darkGray,
                  validator: (value){
                   return validEmailInput(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  icon: Icons.key,
                  hintText: 'Password',
                  hintColor: AppColors.darkGray,
                  isSecure: true,
                  validator: (value){
                    return validPasswordInput(value);
                  },
                ),
                SizedBox(
                  height: height,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CustomButton(
                    text: 'Login',
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        Navigator.of(context).pushReplacementNamed("adminHome");
                      }
                    },
                    buttonType: ButtonType.elevated,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?', style: TextStyle(fontSize: 16),),
                    CustomButton(
                      textColor: AppColors.black,
                      onPressed: () {
                        Navigator.of(context).pushNamed("signin");
                      },
                      text: 'Register',
                      buttonType: ButtonType.text,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
