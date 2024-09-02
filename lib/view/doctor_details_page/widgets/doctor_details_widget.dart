import 'package:app_ui/core/constants/color_constants.dart';
import 'package:app_ui/core/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailsWidget extends StatelessWidget {
  const DoctorDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: ColorConstants.primaryGrey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          CircleAvatar(
              radius: 33,
              child: Image.asset(
                ImageConstants.profilePic,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Dr.Annette Black",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Cardiologist",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: ColorConstants.primaryBlue,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //experience section

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "6 Years+",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Experience",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "500 +",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Patients",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Languages",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Hindi,English,Tamil",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
