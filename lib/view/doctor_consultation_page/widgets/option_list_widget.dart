import 'package:app_ui/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionListWidget extends StatefulWidget {
  const OptionListWidget({super.key, required this.text, this.icon});
  final String text;
  final IconData? icon;

  @override
  _OptionListWidgetState createState() => _OptionListWidgetState();
}

class _OptionListWidgetState extends State<OptionListWidget> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: _isClicked ? Colors.green : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: ColorConstants.primaryGrey, width: .8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.icon != null) ...[
                  Icon(
                    widget.icon,
                    color: _isClicked
                        ? Colors.white
                        : ColorConstants.primaryGrey,
                    size: 19,
                  ),
                  const SizedBox(width: 5),
                ],
                Text(
                  widget.text,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: _isClicked
                          ? Colors.white
                          : ColorConstants.primaryGrey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
