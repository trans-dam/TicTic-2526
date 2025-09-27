import 'package:flutter/material.dart';

const kMainColor = Color.fromRGBO(52, 78, 65, 1);
const kSecondaryColor =  Color.fromRGBO(88, 129, 87, 1);
const kTertiaryColor =  Color.fromRGBO(163, 177, 138, 1);
const kBackgroundColor =   Color.fromRGBO(242, 239, 228, 1);
const kErrorColor =   Color.fromRGBO(238, 99, 82, 1);

final kShadow = BoxShadow(
  color: Colors.black.withValues(alpha: 0.1),
  spreadRadius: 2,
  blurRadius: 5,
  offset: const Offset(0, 3), // changes position of shadow
);