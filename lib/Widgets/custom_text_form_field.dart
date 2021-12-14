import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final IconData suffixIcon;
  final IconData prefixIcon;
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  const CustomTextFormField(
      {Key? key,
      required this.suffixIcon,
      required this.prefixIcon,
      required this.hintText,
      required this.isPassword,
      required this.controller})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obs = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        controller: widget.controller,
        // onChanged: (value) {
        //   debugPrint(value);
        // },
        obscureText: widget.isPassword?obs:false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          //labelText: 'Email',
          hintText: widget.hintText,
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obs = !obs;
                    });
                  },
                  icon:obs? const Icon(Icons.visibility):const Icon(Icons.visibility_off))
              : Icon(widget.suffixIcon),
        ),
      ),
    );
  }
}
