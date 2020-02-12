import 'dart:ui';

import 'package:flutter/material.dart';

//BMI
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kFooterColor = Color(0xFFEB1555);
const kLabelTextFont = 18.0;
const kLabelTextColor = Color(0xFF8D8E98);
const kNumbersTextFont = 50.0;
const kNumbersTextColor = Color(0xFFFFFFFF);

//ClimaApp
const kTempTextStyleFamily = 'Spartan MB';
const kTempTextStyleSize = 100.0;

const kMessageTextStyleFamily = 'Spartan MB';
const kMessageTextStyleSize = 60.0;

const kButtonTextStyleSize = 30.0;
const kButtonTextStyleFamily = 'Spartan MB';

const kConditionTextStyleSize = 100.0;

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none),
);
