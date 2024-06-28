import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox verticalSpace(double height) => SizedBox(height: height.h);

SliverToBoxAdapter verticalSliverSpace(double height) =>
    SliverToBoxAdapter(child: SizedBox(height: height.h));

SizedBox horizontalSpace(double width) => SizedBox(width: width.w);

SliverToBoxAdapter horizontalSliverSpace(double width) =>
    SliverToBoxAdapter(child: SizedBox(width: width.w));