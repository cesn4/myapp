import 'package:flutter/material.dart';
import 'package:myapp/constants/enums.dart';
import 'package:myapp/screens/main/views/contact_view/widgets/letter_hint.dart';
import 'package:myapp/screens/main/views/contact_view/widgets/letter_option.dart';
import 'package:myapp/theme/colors.dart';

class LetterDropInput extends StatelessWidget {
  final List<String> options;
  final String hint;
  final LetterStates stateType;
  final String state;
  final Function stateControler;
  const LetterDropInput(
      {Key key,
      @required this.options,
      @required this.hint,
      @required this.stateType,
      @required this.state,
      @required this.stateControler})
      : super(key: key);

  DropdownMenuItem<dynamic> _buildDropOption({String text, bool active}) {
    return DropdownMenuItem(
      value: text,
      child: LetterOption(text: text, active: active),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // value: state,
      underline: Container(),
      iconSize: 0,
      elevation: 0,
      dropdownColor: ThemeColor.dark.withOpacity(0.8),
      hint: state == ''
          ? LetterHint(text: hint)
          : LetterOption(text: state, active: true),
      items: options
          .map((option) => _buildDropOption(text: option, active: false))
          .toList(),
      onChanged: (value) {
        stateControler(stateType, value);
      },
    );
  }
}
