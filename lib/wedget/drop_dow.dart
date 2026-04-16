import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';


String? selectedValue;
class DropDown extends StatelessWidget {
  final List<String>items;
  final String SelectItemText;
  final Function(String?) onSelected;
  DropDown({super.key, required this.items, required this.SelectItemText, required this.onSelected});

  final valueListenable = ValueNotifier<String?>(null);
  @override
  Widget build(BuildContext context) {
    return Card(
      child:Center(
        child: Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                SelectItemText,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: items
                  .map((String item) => DropdownItem<String>(
                value: item,
                height: 40,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
                  .toList(),
              valueListenable: valueListenable,
              onChanged: (String? value) {
                // valueListenable.value = value;
                onSelected(value);
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                width: 140,
              ),
            ),
          ),
        ),
      ) ,

    );
  }
}

