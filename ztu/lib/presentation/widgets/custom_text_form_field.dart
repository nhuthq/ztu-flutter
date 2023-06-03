import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  
const CustomTextFormField({super.key, required this.title, this.onChanged, required this.textInputType, required this.textInputFormatter});

final String title;
final Function(String)? onChanged;
final TextInputType textInputType;
final TextInputFormatter textInputFormatter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child:
                Text(title, style: Theme.of(context).textTheme.bodyLarge),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: TextFormField(
              onChanged: onChanged,
              cursorColor: Colors.grey,
              style: Theme.of(context).textTheme.titleLarge,
              keyboardType: textInputType,
              inputFormatters: [textInputFormatter],
              decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(left: 10),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
        ],
      ),
    );
  }
}