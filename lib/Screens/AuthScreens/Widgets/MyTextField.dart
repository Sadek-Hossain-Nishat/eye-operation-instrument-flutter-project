import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  const MyTextFields({
    Key? key,
    this.hintTittle,
    this.iconData,
    this.textEditingController,
    this.isObscure = false,
  }) : super(key: key);
  final String? hintTittle;
  final IconData? iconData;
  final TextEditingController? textEditingController;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hintTittle,
          hintStyle:
              Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),
          prefixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
