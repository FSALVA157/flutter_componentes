import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
    final String? hintText;
    final String? labelText;
    final String? helperText;
    final IconData? icon;
    final IconData? suffixIcon;
    final TextInputType? keyboardType;
    final bool obscureText;
    final TextCapitalization textCapitalization;
    final String formProperty;
    final Map<String, String> formValues;
    
    const CustomInputField({
    Key? key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon,
     this.keyboardType, this.obscureText=false, this.textCapitalization=TextCapitalization.none, required this.formProperty, required this.formValues}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: true,
      //initialValue: 'Ingrese su nombre',
      keyboardType: (this.keyboardType == null)? null: this.keyboardType,
      obscureText: this.obscureText,
      textCapitalization: (this.textCapitalization == null)? TextCapitalization.words: this.textCapitalization,
      onChanged: (String value){
          formValues[formProperty] = value;
      },
      validator: (value){
        if(value == null) return 'Este campo es Obligatorio';
        return value.length < 3? 'El nombre debe tener mas de 2 caracteres': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: this.hintText,
        labelText: this.labelText,
        helperText: this.helperText,
        icon: this.icon == null? null: Icon(this.icon),
        suffixIcon: this.suffixIcon == null? null: Icon(this.suffixIcon),
        ),
       );
  }
}
