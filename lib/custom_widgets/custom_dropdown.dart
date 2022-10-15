import 'package:flutter/material.dart';

class FDropdown extends StatefulWidget {
  const FDropdown(
      {Key? key,
      this.onChanged,
      this.height = 40,
      this.borderRadius = 10,
      this.textStyle = const TextStyle(color: Colors.black, fontSize: 14),
      this.contentPadding =
          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      required this.items,
      required this.currentValue,
      required this.color,
      required this.title})
      : super(key: key);
  final ValueChanged<dynamic>? onChanged;
  final List<DropdownMenuItem<dynamic>> items;
  final dynamic currentValue;
  final Color color;
  final String title;
  final double height;
  final double borderRadius;
  final TextStyle textStyle;
  final EdgeInsetsGeometry? contentPadding;

  @override
  State<FDropdown> createState() => _FDropdownState();
}

class _FDropdownState extends State<FDropdown> {
  dynamic _currentValue;

  @override
  void initState() {
    _currentValue = widget.currentValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        SizedBox(
            height: widget.height,
            child: DropdownButtonFormField(
              items: widget.items,
              onChanged: (dynamic newValue) {
                widget.onChanged?.call(newValue);
                setState(() {
                  _currentValue = newValue!;
                });
              },
              value: _currentValue,
              isExpanded: true,
              decoration: InputDecoration(
                  contentPadding: widget.contentPadding,
                  border: OutlineInputBorder(
                      gapPadding: 5,
                      borderRadius: BorderRadius.circular(widget.borderRadius)),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 5,
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    borderSide: BorderSide(color: widget.color),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  fillColor: Colors.white70),
              isDense: true,
              style: widget.textStyle,
              icon: Icon(Icons.keyboard_arrow_down, color: widget.color),
            ))
      ],
    );
  }
}
