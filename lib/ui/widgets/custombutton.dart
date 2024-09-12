import 'package:flutter/material.dart';
import '../../constants/colors.dart';
// قمنا بانشاء  كلاس للازار قاب لاعادة الاستخدام بحيث عند استدعاءه في الواجهة تكتب نوع الزر وبعد ذلك تستطيع التحكم في كل الخصائص 

enum ButtonType { text, elevated, outlined, icon }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color backgroundColor;
  final EdgeInsets padding;
  final double borderRadius;
  final BorderSide borderSide;
  final ButtonType buttonType;
  final IconData? icon; // for IconButton

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor = AppColors.white,
    this.backgroundColor = AppColors.blue,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    this.borderRadius = 60,
    this.borderSide = BorderSide.none,
    this.buttonType = ButtonType.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case ButtonType.text:
        return 
          TextButton(
            onPressed: onPressed,
            child: Text(text, style: const TextStyle(color: AppColors.blue, fontSize: 16),),
        );

      case ButtonType.elevated:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: textColor, backgroundColor: backgroundColor, padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: borderSide,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(text,style: const TextStyle(fontSize: 20),),
          ),
        );

      case ButtonType.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: textColor, padding: padding,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: borderSide,
            ),
          ),
          child: Text(text),
        );

      case ButtonType.icon:
        return IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: textColor),
          padding: padding,
          splashRadius: borderRadius,
        );

      default:
        return TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: textColor, padding: padding,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: borderSide,
            ),
          ),
          child: Text(text, style: const TextStyle(fontSize: 16),),
        );
    }
  }
}
