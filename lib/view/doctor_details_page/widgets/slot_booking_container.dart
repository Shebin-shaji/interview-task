import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlotBookingContainer extends StatelessWidget {
  const SlotBookingContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(7))),
      height: 50,
      child: Column(
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            "4 Slots Available",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
