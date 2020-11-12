import 'package:flutter/material.dart';
import 'package:myapp/constants/enums.dart';
import 'package:myapp/screens/main/views/contact_view/widgets/letter_drop_input.dart';
import 'package:myapp/screens/main/views/contact_view/widgets/letter_text.dart';
import 'package:myapp/theme/spacing.dart';
import 'package:myapp/widgets/background_wrapper.dart';
import 'package:myapp/widgets/classic_button.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key key}) : super(key: key);

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  String _name = '';
  String _profesion = '';
  String _movie = '';
  String _callBack = '';
  String _contact = '';

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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BackgroundWrapper(
        image:
            'https://i.picsum.photos/id/1033/2048/1365.jpg?hmac=zEuPfX7t6U866nzXjWF41bf-uxkKOnf1dDrHXmhcK-Q',
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: ThemeSpacing.medium),
                    child: LetterText(text: 'Hello Mindaugas,'),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LetterText(text: "I'm "),
                      LetterDropInput(
                          hint: 'the name',
                          options: ['Van Kenobi', 'Darth Vader', 'Kavasaki'],
                          state: _name,
                          stateType: LetterStates.name,
                          stateControler: _stateEditingControler),
                      LetterText(text: " and I took interset in your work."),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LetterText(text: "My favorite movie is "),
                      LetterDropInput(
                          hint: 'name the movie',
                          options: [
                            'Start Wars',
                            'Harry Potter',
                            'Kill Bill Vol. 2'
                          ],
                          state: _movie,
                          stateType: LetterStates.movie,
                          stateControler: _stateEditingControler),
                      LetterText(text: " So I do believe,"),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LetterText(text: "we could "),
                      LetterDropInput(
                          hint: 'do somthing?!',
                          options: [
                            'colaborate in crime',
                            'discuss economical problems',
                            'chat about movies'
                          ],
                          state: _profesion,
                          stateType: LetterStates.profesion,
                          stateControler: _stateEditingControler),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LetterText(text: "Write or Call me back "),
                      LetterDropInput(
                          hint: 'how i wil do it?????',
                          options: ['email', 'social link', 'mobile'],
                          state: _callBack,
                          stateType: LetterStates.callBack,
                          stateControler: _stateEditingControler),
                      LetterText(text: " below."),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ThemeSpacing.medium),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LetterDropInput(
                          hint: 'email',
                          state: _contact,
                          options: [
                            'email@email.com',
                            'social@link.lt',
                            'mobile@maybe.dart'
                          ],
                          stateType: LetterStates.contact,
                          stateControler: _stateEditingControler,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [LetterText(text: "See ya later!!")],
                  ),
                  ConstrainedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: ThemeSpacing.medium),
                            child: ClassicButton(
                              title: 'Send Email',
                              onPressed: () {},
                            )),
                      ],
                    ),
                    constraints: BoxConstraints(maxWidth: width * 0.4),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
