import 'package:flutter/material.dart';
import 'package:myapp/models/drop_item_model.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/widgets/background_wrapper.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:myapp/widgets/classic_button.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key key}) : super(key: key);

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  String _name;
  String _profesion;
  String _movie;
  String _callBack;
  String _contact;
  @override
  Widget build(BuildContext context) {
    print(_name);
    return BackgroundWrapper(
        image:
            'https://i.picsum.photos/id/1033/2048/1365.jpg?hmac=zEuPfX7t6U866nzXjWF41bf-uxkKOnf1dDrHXmhcK-Q',
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: _buildText('Hello Mindaugas,'),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildText("I'm "),
                      _buildDropInput(
                          hint: 'name',
                          options: ['Van Kenobi', 'Darth Vader', 'Kavasaki'],
                          state: _name,
                          stateType: LetterStates.name),
                      _buildText(" and I took interset in your work."),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildText("My favorite movie is "),
                      _buildDropInput(
                          hint: 'name it',
                          options: [
                            'Start Wars',
                            'Harry Potter',
                            'Kill Bill Vol. 2'
                          ],
                          state: _movie,
                          stateType: LetterStates.movie),
                      _buildText(" So I do believe,"),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildText("we could "),
                      _buildDropInput(
                          hint: 'do what?!',
                          options: [
                            'colaborate in crime',
                            'discuss economical problems',
                            'chat about movies'
                          ],
                          state: _profesion,
                          stateType: LetterStates.profesion),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildText("Write or Call me back "),
                      _buildDropInput(
                          hint: 'how????',
                          options: ['email', 'social link', 'mobile'],
                          state: _callBack,
                          stateType: LetterStates.callBack),
                      _buildText(" below."),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildDropInput(
                          hint: 'email',
                          state: _contact,
                          options: [
                            'email@email.com',
                            'social@link.lt',
                            'mobile@maybe.dart'
                          ],
                          stateType: LetterStates.contact),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [_buildText("See ya later!!")],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: ClassicButton(),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: ThemeColor.light.withOpacity(0.8)),
    );
  }

  Widget _buildHint(String text) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: ThemeColor.inactiveLight),
      ),
    );
  }

  DropdownMenuItem<dynamic> _buildOption(String text) {
    return DropdownMenuItem(
        value: text,
        child: Align(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: ThemeColor.light),
          ),
        ));
  }

  Widget _buildDropInput(
      {List<String> options,
      String hint,
      LetterStates stateType,
      String state}) {
    return DropdownButton(
      value: state,
      iconSize: 0,
      elevation: 0,
      dropdownColor: ThemeColor.dark.withOpacity(0.8),
      hint: _buildHint(hint),
      items: options.map((p) => _buildOption(p)).toList(),
      onChanged: (value) {
        print('I work');
        _stateEditingControler(stateType, value);
      },
    );
  }

  void _stateEditingControler(LetterStates stateType, String value) {
    switch (stateType) {
      case LetterStates.name:
        return setState(() => {_name = value});
      case LetterStates.contact:
        return setState(() => {_contact = value});
      case LetterStates.profesion:
        return setState(() => {_profesion = value});
      case LetterStates.movie:
        return setState(() => {_movie = value});
      case LetterStates.callBack:
        return setState(() => {_callBack = value});
      default:
        return null;
    }
  }
}

enum LetterStates {
  name,
  callBack,
  profesion,
  movie,
  contact,
}
