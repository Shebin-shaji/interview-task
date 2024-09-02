import 'package:app_ui/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookLabTestContainerWidget extends StatelessWidget {
  const BookLabTestContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF6F9FD),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.primaryGrey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: ColorConstants.primaryWhite,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Convenient Lab",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "tests at Your",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Doorstep",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 120,
                          decoration: const BoxDecoration(
                            color: ColorConstants.primaryPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(27),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Book Lab Test",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: ColorConstants.primaryWhite,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: ColorConstants.primaryWhite,
                                  size: 13,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 80,
                      child: const CircleAvatar(
                        radius: 55,
                        child: Image(
                          image: AssetImage(
                              'assets/images/front-view-male-doctor-white-medical-suit-with-mask-due-covid-working-with-solutions-light-white-space 1.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
