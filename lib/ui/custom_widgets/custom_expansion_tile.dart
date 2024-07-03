import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final String rightText;
  final List<Map<String, String>> items;
  final bool initiallyExpanded;
  // ignore: use_key_in_widget_constructors
  const CustomExpansionTile({
    required this.title,
    required this.rightText,
    required this.items,
    this.initiallyExpanded = false,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 0.5, color: borderColor)),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            leading: Icon(
              _isExpanded ? Icons.expand_less : Icons.expand_more,
              color: borderColor,
            ),
            title: Text(
              widget.title,
              style: style12.copyWith(color: blackColor),
            ),
            trailing: Text(widget.rightText),
          ),
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.items.map((item) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(item['title'] ?? '', style: style12)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item['preview'] ?? '',
                              style: style12.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              item['duration'] ?? '',
                              style: style12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
