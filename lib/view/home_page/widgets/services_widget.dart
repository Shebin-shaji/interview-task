import 'package:app_ui/core/constants/color_constants.dart';
import 'package:app_ui/view/doctor_consultation_page/doctor_consultation_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget(
      {super.key,
      required this.text,
      required this.description,
      required this.image,
      required this.offer});
  final String text;
  final String description;
  final String image;
  final String offer;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorConsultationPage(),
          )),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          decoration: BoxDecoration(
              color: ColorConstants.primaryWhite,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(
                  color: Color.fromARGB(255, 37, 145, 69), width: .5)),
          child: Stack(
            children: [
              Positioned(
                top: 24,
                left: 5,
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: ColorConstants.primaryBlack,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Positioned(
                  top: 48,
                  left: 5,
                  child: Text(
                    description,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: ColorConstants.primaryBlack,
                        fontSize: 13,
                      ),
                    ),
                  )),
              Positioned(
                top: 80,
                left: 5,
                child: Container(
                  height: 17,
                  decoration: const BoxDecoration(
                      color: ColorConstants.primaryGreen,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      offer,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(right: 0, bottom: 0, child: Image.asset(image)),
            ],
          ),
        ),
      ),
    );
  }
}
