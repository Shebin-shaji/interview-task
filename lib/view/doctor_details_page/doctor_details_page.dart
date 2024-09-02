// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_ui/core/constants/color_constants.dart';
import 'package:app_ui/core/constants/image_constants.dart';
import 'package:app_ui/view/doctor_details_page/widgets/daily_slot_widget.dart';
import 'package:app_ui/view/doctor_details_page/widgets/doctor_details_widget.dart';
import 'package:app_ui/view/doctor_details_page/widgets/slot_booking_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailsPage extends StatelessWidget {
  const DoctorDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Doctor Details",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: ColorConstants.primaryBlack,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorDetailsWidget(),
              SizedBox(
                height: 14,
              ),

              //Appointment details

              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(
                        color: ColorConstants.primaryGrey, width: .5)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "In Clinic Appointment",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "\$400",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorConstants.primaryGrey,
                      thickness: .5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Apollo Spectra Hospital",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Text(
                                "Koramangala 5 Block",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "3 more Clinic ",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: ColorConstants.primaryPurple,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // slots available

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SlotBookingContainer(
                    text: 'Today',
                  ),
                  SlotBookingContainer(
                    text: 'Tomorrow',
                  ),
                  SlotBookingContainer(
                    text: 'Monday',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //Daily slots

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Morning",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    //tommorrow slot

                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      width: double.maxFinite,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: .6 / .3,
                                  mainAxisSpacing: 2,
                                  crossAxisSpacing: 2),
                          itemBuilder: (context, index) => DailySlotWidget()),
                    ),
                    //Afternoon slot
                    Text(
                      "After Noon",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      width: double.maxFinite,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: .6 / .3,
                                  mainAxisSpacing: 2,
                                  crossAxisSpacing: 2),
                          itemBuilder: (context, index) => DailySlotWidget()),
                    ),

                    //Evening

                    //Afternoon slot
                    Text(
                      "After Noon",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      width: double.maxFinite,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: .6 / .3,
                                  mainAxisSpacing: 2,
                                  crossAxisSpacing: 2),
                          itemBuilder: (context, index) => DailySlotWidget()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
