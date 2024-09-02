import 'package:flutter/material.dart';

class DummyDb {
  // home page services list

  static const List<Map> servicesList = [
    {
      "service": "Consultation",
      "description": "Instant Consultation",
      "image":
          "assets/images/medical-concept-asian-beautiful-female-doctor-white-coat-with-stethoscope-waist-up-medical-student-woman-hospital-worker-looking-camera-smiling-studio-blue-background 1.png",
      "offer": "Free Consultation",
    },
    {
      "service": "Instant Services",
      "description": "Quick Access",
      "image":
          "assets/images/smartphone-hand-fast-delivery-man-green-scooter-delivery-concept-online-order-food-delivery-last-mile-banner-template 1.png",
      "offer": "Upto 20% Off",
    },
    {
      "service": "Radiology",
      "description": "Advanced Radilogy",
      "image":
          "assets/images/beautiful-female-doctor-examining-xray-while-standing-studio-removebg-preview 1.png",
      "offer": "Flat 50% Off",
    },
    {
      "service": "Lab Tests",
      "description": "Effortless Lab Test",
      "image":
          "assets/images/front-view-male-doctor-white-medical-suit-with-mask-due-covid-working-with-solutions-light-white-space 1.png",
      "offer": "Upto 20% Off",
    },
  ];

  static const List<Map> optionList = [
    {
      "text": "Filter",
      "icon": Icons.filter_alt_rounded,
    },
    {
      "text": "Sort by",
      "icon": Icons.arrow_downward_rounded,
    },
    {
      "text": "OPD Consultation",
    },
     {
      "text": "Virtual Consult",
    }
  ];
  

}
