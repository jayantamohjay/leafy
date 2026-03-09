import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final Color? color;
  final bool isLoading;
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.color,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,

      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        backgroundColor: WidgetStateProperty.all(
          color ?? Theme.of(context).primaryColor,
        ),
        foregroundColor: WidgetStatePropertyAll(Appcolors.lightBackgroundColor),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      child: SizedBox(
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Appcolors.lightBackgroundColor,
                  ),
                ),
              )
            : Text(title),
      ),
    );
  }
}
