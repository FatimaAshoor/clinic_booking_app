import 'package:clinic_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  // Change the State to State Full Widget to Handle the Situation if the Text 
  //Field is Password show Eye Icon to Hide or show the Password
  CustomTextField(
      {super.key, required this.hintText, required this.icon, this.isSecure, required this.hintColor});
  final String hintText;
  final Color hintColor;
  final IconData icon;
  bool? isSecure = false;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isSecure ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(
          obscureText: _obscureText,
          decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            prefixIconColor: AppColors.blue,
            contentPadding: const EdgeInsets.only(left: 10, top: 10),
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: widget.hintColor),
            suffixIcon: widget.isSecure == true
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null, // Show the eye icon only if it’s a password field
          ),
        ),
      ),
    );
  }
}
