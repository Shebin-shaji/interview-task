import 'package:app_ui/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DailySlotWidget extends StatelessWidget {
  const DailySlotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.primaryBlue, width: .8),
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightBlue.shade100,
        ),
        child: Center(
          child: Text(
            "11:00 AM",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: ColorConstants.primaryBlue,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
