import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/validations.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custombutton.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = 40;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in", style: TextStyle(fontWeight: FontWeight.bold),),
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
                const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CustomTextField(
                  icon: Icons.person_outline_rounded,
                  hintText: 'Enter Your Name',
                  hintColor: AppColors.darkGray,
                  validator: (value){
                    return validInput(value);
                  },
                ),
                const SizedBox(
                  height: 20,
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
                  hintText: 'Enter Your Password',
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
                    text: 'Sign in',
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        Navigator.of(context).pushReplacementNamed("login");
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
                    const Text('Already have an account?', style: TextStyle(fontSize: 16),),
                    CustomButton(
                      textColor: AppColors.black,
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          Navigator.of(context).pushReplacementNamed("login");
                        }
                      },
                      text: 'Login',
                      buttonType: ButtonType.text,
                    ),
                  ],
                )
              ],
            )
              ],
          ),
        ),
      ),
    ));
  }
}
