import 'package:flutter/material.dart';
import 'package:loyalty/export.dart';

Widget fullScreenLoader() => Material(
      color: colors.background.withOpacity(0.05),
      child: InkWell(
        onTap: () {},
        splashColor: colors.white.withOpacity(0.0),
        hoverColor: colors.white.withOpacity(0.0),
        highlightColor: colors.white.withOpacity(0.0),
        child: SizedBox(
          width: sizes.width,
          height: sizes.height,
          child: Center(
            child: CircularProgressIndicator(
              backgroundColor: colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(
                colors.appColor,
              ),
            ),
          ),
        ),
      ),
    );
