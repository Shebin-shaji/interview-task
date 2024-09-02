import 'package:app_ui/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddressWidget extends StatelessWidget {
  const AddAddressWidget({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: ColorConstants.primaryPurple,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: ColorConstants.primaryPurple,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
