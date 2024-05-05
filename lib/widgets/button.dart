import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;

  const CustomButton({Key? key, required this.title, required this.onTap, this.loading = false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 39, 137, 176),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: loading ? const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 3,
        ) : Text(title, style: const TextStyle(color: Colors.white)),),
      ),
    );
  }
}
