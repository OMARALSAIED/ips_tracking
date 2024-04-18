import 'package:flutter/material.dart';

import 'package:ips_tracking/core/utils/Styles.dart';

// ignore: must_be_immutable
class CustomContainerTextField extends StatelessWidget {
   CustomContainerTextField({

    super.key,
    required this.hint, required this.prefixIcon,
     this.suffixIcon,
     this.validator
  });
  final Icon prefixIcon;
   Icon? suffixIcon;
  final String? hint;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 3,
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 10,
                    offset: Offset(1, 1))
              ]),
          height: 60,
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextFormField(
            
            validator:validator ,
            textAlign: TextAlign.start,
         style: Styles.textstyle20,
            scrollPadding: EdgeInsets.only(bottom: 100),
            decoration: InputDecoration(
             
               fillColor: Colors.white,
                hintText: hint,hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: prefixIcon ,
                suffixIcon: suffixIcon,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15)),
                filled: true),
          ),
        ),
          // Show error message if validator returns an error
      
      ],
    );
  }
}