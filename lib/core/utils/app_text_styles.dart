import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static final TextStyle style24Bold = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle style16SemiBold = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
  );
}