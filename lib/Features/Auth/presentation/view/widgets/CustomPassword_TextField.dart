import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/QrCode/presentation/views/QrCode.dart';
import 'package:ips_tracking/core/utils/Styles.dart';

// ignore: must_be_immutable
class CustomPasswordTextField extends StatefulWidget {
   CustomPasswordTextField({

    super.key,
    required this.hint, required this.prefixIcon,
     this.suffixIcon,
     this.validator,
     this.controller
  });
  final Icon prefixIcon;
   Icon? suffixIcon;
  final String? hint;
  TextEditingController? controller;
  String? Function(String?)? validator;

  @override
  State<CustomPasswordTextField> createState() => _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {

  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
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
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        controller:controller ,
        obscureText: obscureText,
        validator:widget.validator ,
        textAlign: TextAlign.start,
     style: Styles.textstyle20,
        scrollPadding: EdgeInsets.only(bottom: 100),
        decoration: InputDecoration(
           fillColor: Colors.white,
            hintText: widget.hint,hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: widget.prefixIcon,
            suffixIcon: TogglePassword(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15)),
            filled: true),
      ),
    );
  }
  TogglePassword()
  {
    return IconButton(onPressed: (){
     setState(() {
        obscureText=!obscureText;
     });
    }, icon: obscureText?Icon(Icons.visibility): Icon(Icons.visibility_off,color: Colors.grey,));
  }

}

 
  
