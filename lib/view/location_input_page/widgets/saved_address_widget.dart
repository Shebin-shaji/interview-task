import 'package:app_ui/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedAddressWidget extends StatelessWidget {
  const SavedAddressWidget({super.key, required this.icon, required this.name});
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: ColorConstants.primaryGrey,
          ),
          const SizedBox(
            width: 4,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: ColorConstants.primaryBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                'Sector 2,HSR Layout Banglore,Karnataka...',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryGrey,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
