import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static final TextStyle style24Bold = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle style28Bold = GoogleFonts.poppins(
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle style16SemiBold = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle style16Bold = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle style16Normal = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle style16Light = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle style14Normal = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle style14bold = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle style14SemiBold = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
}