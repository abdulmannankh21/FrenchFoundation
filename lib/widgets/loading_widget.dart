import 'package:flutter/material.dart';
import 'package:fafapp/export.dart';

Widget fullScreenLoader() => Material(
      color: AppColors.bgColor.withOpacity(0.05),
      child: InkWell(
        onTap: () {},
        splashColor: AppColors.bgColor.withOpacity(0.0),
        hoverColor: AppColors.bgColor.withOpacity(0.0),
        highlightColor: AppColors.bgColor.withOpacity(0.0),
        child: SizedBox(
          width: sizes.width,
          height: sizes.height,
          child: Center(
            child: CircularProgressIndicator(
              backgroundColor: AppColors.bgColor,
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
