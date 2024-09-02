// ignore_for_file: prefer_const_constructors

import 'package:app_ui/core/constants/color_constants.dart';
import 'package:app_ui/dummy_db/dummy_db.dart';
import 'package:app_ui/global_widgets/custom_search_bar.dart';
import 'package:app_ui/view/doctor_consultation_page/widgets/doctor_consultation_widget.dart';
import 'package:app_ui/view/doctor_consultation_page/widgets/option_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorConsultationPage extends StatelessWidget {
  const DoctorConsultationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: ColorConstants.primaryWhite,
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.primaryWhite.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                height: 45,
                width: 45,
                child: Center(
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.home,
                      color: ColorConstants.primaryPurple,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Symphony, HSR Layout, Bangalore',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: ColorConstants.primaryGrey, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.edit,
                  color: ColorConstants.primaryPurple,
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),

            //search bar

            CustomSearchBar(padding: 3, text: "Find Doctor,Clinic,Medicine"),
            SizedBox(
              height: 17,
            ),
            //options
            SizedBox(
              height: 40,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 12,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: DummyDb.optionList.length,
                  itemBuilder: (context, index) => OptionListWidget(
                        text: DummyDb.optionList[index]['text'],
                        icon: DummyDb.optionList[index]['icon'],
                      )),
            ),

            //Doctors List

            Expanded(
              child: GridView.builder(
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 3 / 2,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) => DoctorConsultationWidget()),
            )
          ],
        ),
      ),
    );
  }
}
