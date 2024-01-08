import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techjetai/utils/res/colors.dart';

class AppTextStyle {
  static final textStyle1 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.kBlackColor,
  );

  static final textstyle2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    color: AppColors.kGreyColor,
    fontSize: 10,
  );

  static final textStyle3 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.kWhiteColor,
  );

  static final textStyle4 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.kBlackColor,
  );

  static final textStyle5 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    letterSpacing: 0.12,
    color: AppColors.kGreenColor,
  );
   static final textStyle6 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: const Color(0xFF7A7A7A),
  );
}
