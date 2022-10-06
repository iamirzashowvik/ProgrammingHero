import 'package:flutter/material.dart';

const bgColor = Color(0xff010133);

// INIT
double large = 32;
double regular = 16;
double small = 14;
double titleSize = 20;

// LARGE SIZE
final lgBold = TextStyle(
  fontSize: large,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
final lgBook = TextStyle(
  fontSize: large,
  color: Colors.white,
);

// REGULAR SIZE
final rgBold = TextStyle(
    fontSize: regular, color: Colors.white, fontWeight: FontWeight.bold);
final rgBook = TextStyle(fontSize: regular, color: Colors.white);
final rgMed = TextStyle(fontSize: regular, color: Colors.white);

// SMALL SIZE
final smBold = TextStyle(
    fontSize: small, color: Colors.white, fontWeight: FontWeight.bold);
final smBook = TextStyle(fontSize: small, color: Colors.white);
final smMed = TextStyle(fontSize: small, color: Colors.white);

// PADDING
double rgPadding = regular;
double lgPadding = rgPadding * 2;
double smPadding = rgPadding / 2;
double miniPadding = smPadding / 1.5;
double screenPadding = regular / 1.25;
