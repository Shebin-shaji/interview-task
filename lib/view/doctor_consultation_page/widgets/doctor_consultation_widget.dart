// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_ui/core/constants/color_constants.dart';
import 'package:app_ui/core/constants/image_constants.dart';
import 'package:app_ui/view/doctor_details_page/doctor_details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorConsultationWidget extends StatelessWidget {
  const DoctorConsultationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorDetailsPage(),
          )),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorConstants.primaryGrey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            color: ColorConstants.primaryWhite,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        ImageConstants.profilePic,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Annette Black",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: ColorConstants.primaryBlack,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "Ayurvedic",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: ColorConstants.primaryBlue,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "4.1",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: ColorConstants.primaryGrey,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: ColorConstants.primaryGrey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5+ Years Experience",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: ColorConstants.primaryGrey,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.language,
                            color: ColorConstants.primaryGrey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "English,Hindi,Tamil",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: ColorConstants.primaryGrey,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Divider(
                color: ColorConstants.primaryGrey,
                thickness: 1,
              ),
              //address and fee details
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2nd Sector,HSR Layout",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: ColorConstants.primaryGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "ABC Clinic",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: ColorConstants.primaryGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "500 Consultation Fee",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryGrey,
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                "Next Available at 11 AM",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: ColorConstants.primaryGreen,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //Contact clinic and book Clinic visit

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 175,
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryWhite,
                        border: Border.all(color: ColorConstants.primaryBlue),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                        child: Text(
                      "Contact Clinic",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: ColorConstants.primaryBlue,
                          fontSize: 14,
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 45,
                    width: 175,
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryPurple,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                        child: Text(
                      "Book Clinic Visit",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: ColorConstants.primaryWhite,
                          fontSize: 14,
                        ),
                      ),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
