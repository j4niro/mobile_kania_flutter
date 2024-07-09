import 'package:flutter/material.dart';

class SelectorSite extends StatefulWidget {
  final List<String> options;
  final Function(int) onSelectChange;

  SelectorSite({required this.options, required this.onSelectChange});

  @override
  _SelectorSiteState createState() => _SelectorSiteState();
}

class _SelectorSiteState extends State<SelectorSite> {
  int selectedIndex = 0; // Index sélectionné par défaut

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(color: Color(0XFFFF7900)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: DropdownButton(

        value: selectedIndex,
        items: widget.options
            .asMap()
            .entries
            .map((entry) => DropdownMenuItem(
                  value: entry.key,
                  child: Text(entry.value, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal)),
                ))
            .toList(),
        onChanged: (index) {
          setState(() {
            selectedIndex = index!;
          });
          widget.onSelectChange(index!);
        },
      ),
    );
  }
}
