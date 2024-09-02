import 'package:app_ui/core/constants/color_constants.dart';
import 'package:app_ui/global_widgets/custom_search_bar.dart';
import 'package:app_ui/view/location_input_page/widgets/add_address_widget.dart';
import 'package:app_ui/view/location_input_page/widgets/saved_address_widget.dart';
import 'package:app_ui/view/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationInputPage extends StatelessWidget {
  const LocationInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Routes(),
                ));
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
          color: ColorConstants.primaryBlack,
        ),
        centerTitle: false,
        titleSpacing: 2,
        title: Text(
          'Enter your area or apartment name',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: ColorConstants.primaryGrey, fontSize: 16),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 7,
            ),
            // Search bar
            CustomSearchBar(padding: 6, text: "Try HSR Layout,Sri Gardenia"),
            const SizedBox(
              height: 15,
            ),

            const AddAddressWidget(
              text: 'Use My current location',
              icon: Icons.home,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: ColorConstants.primaryGrey,
              thickness: .2,
            ),
            const AddAddressWidget(
              text: 'Add New Address',
              icon: Icons.add,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: ColorConstants.primaryGrey,
              thickness: .2,
            ),

            const SizedBox(height: 8),

            //saved adresses

            Text(
              'Saved Addresses',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: ColorConstants.primaryGrey,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),

            const SavedAddressWidget(
              icon: Icons.home,
              name: 'Home',
            ),
            const SavedAddressWidget(
              icon: Icons.navigation_outlined,
              name: 'Ajmal',
            ),
            const SavedAddressWidget(
              icon: Icons.navigation_outlined,
              name: 'Shebin',
            ),
            const Divider(
              color: ColorConstants.primaryGrey,
              thickness: .2,
            ),
            Text(
              'Recent Searches',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: ColorConstants.primaryGrey,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SavedAddressWidget(
              icon: Icons.location_on_outlined,
              name: 'PWD Quarters',
            ),
          ],
        ),
      ),
    );
  }
}
