import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../const_color.dart';

///
class SearchTextField extends StatefulWidget {
  ///
  const SearchTextField({Key key, @required this.text, @required this.onChanged, @required this.hintText}) : super(key: key);

  ///
  final String text;

  ///
  final ValueChanged<String> onChanged;

  ///
  final String hintText;

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty.has('onChanged', onChanged));
    properties.add(StringProperty('text', text));
    properties.add(StringProperty('hintText', hintText));
  }
}

class _SearchTextFieldState extends State<SearchTextField> {
  ///
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const styleActive = TextStyle(color: ThemeColors.kBlack);
    final styleHint = TextStyle(color: ThemeColors.kBlack[700]);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ThemeColors.kWhite,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: style.color),
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    controller.clear();
                    widget.onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Icon(Icons.close, color: style.color),
                )
              : null,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>('controller', controller));
  }
}
