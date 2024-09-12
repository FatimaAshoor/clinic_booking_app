import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custombutton.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                icon: Icons.person_outline_rounded,
                hintText: 'Enter Your Name',
                hintColor: AppColors.darkGray,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                icon: Icons.email_outlined,
                hintText: 'Enter Your Email',
                hintColor: AppColors.darkGray,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                icon: Icons.key,
                hintText: 'Enter Your Password',
                hintColor: AppColors.darkGray,
                isSecure: true,
              ),
              SizedBox(
                height: height,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: CustomButton(
                  text: 'Sign in',
                  onPressed: () {
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
                      Navigator.of(context).pushNamed("login");
                    },
                    text: 'Login',
                    buttonType: ButtonType.text,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
