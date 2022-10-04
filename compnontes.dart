
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//login button*
Widget CustomButton({
required double width,
required Color textColor,
required Color color,
required String text,
required void Function() onPressed,
})=> Container(height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: color,),
                  
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: width,
                  
                  child: MaterialButton(
                    
                    onPressed: onPressed,
                      
                  
                    child: Text(
                      text,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                );
                Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
   void Function(String)? onSubmit,
  ValueChanged<String>? onChange,
  void Function()? onTap,
  bool isPassword = false,
  required FormFieldValidator<String>? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  void Function()? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );