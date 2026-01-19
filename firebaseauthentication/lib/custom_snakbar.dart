import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSnackbar{
  showCustomSnakbar(
    BuildContext context,
    String message,{
      Color bgColor=Colors.green,
    }){
      ScaffoldMessenger.of(context,
      ).showSnackBar(SnackBar(content: Text(message),
      backgroundColor: bgColor,
      ));

    }

  }
