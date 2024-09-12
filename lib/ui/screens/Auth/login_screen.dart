import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custombutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                icon: Icons.person,
                hintText: 'User Name',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                icon: Icons.key,
                hintText: 'Password',
                isSecure: true,
              ),
              SizedBox(
                height: height,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: CustomButton(
                  // عند استدعاء الكلاس نقوم بتمرير المتغيرات كالتالي
                  text: 'Login', //النص الذي سوف يظهر على الزر
                  onPressed: () {
                    //الاكشن الذي سوف يقوم به الزر
                    //هنا يتم اضافة الاكشن المحدد عند الضغط على الزر
                    //مثل استدعاء دالة الانتقالة لصفحة وهكذا
                  },
                  buttonType: ButtonType.elevated,//نوع الزر الذي تريدونه تستدعونه بهذه الطريقة
                  //هناك المزيد من الميزات يمكنكم التعديل عليها كما تريدون
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
                    onPressed: () {},
                    text: 'Register',
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
