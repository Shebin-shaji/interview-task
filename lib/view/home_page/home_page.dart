import 'package:app_ui/core/constants/color_constants.dart';
import 'package:app_ui/dummy_db/dummy_db.dart';
import 'package:app_ui/global_widgets/custom_search_bar.dart';
import 'package:app_ui/view/home_page/widgets/book_lab_test_container_widget.dart';
import 'package:app_ui/view/home_page/widgets/services_widget.dart';
import 'package:app_ui/view/location_input_page/location_input_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          color:ColorConstants.primaryPurple,
        ),
        title: Text(
          'Symphony, HSR Layout, Bangalore',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit,
              color:ColorConstants.primaryPurple,
            ),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LocationInputPage(),
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),

          // Search bar

          const CustomSearchBar(
            padding: 25,
            text: 'Find Doctor,Clinic,Medicine',
          ),
          const SizedBox(height: 15),

          const BookLabTestContainerWidget(),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: DummyDb.servicesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) => ServicesWidget(
                      text: DummyDb.servicesList[index]['service'],
                      description: DummyDb.servicesList[index]['description'],
                      image: DummyDb.servicesList[index]['image'],
                      offer: DummyDb.servicesList[index]['offer'],
                    )),
          )
        ],
      ),
    );
  }
}
