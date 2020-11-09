import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/widgets/background_wrapper.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:myapp/widgets/classic_button.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
        image:
            'https://i.picsum.photos/id/1033/2048/1365.jpg?hmac=zEuPfX7t6U866nzXjWF41bf-uxkKOnf1dDrHXmhcK-Q',
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: _buildText('Hello Mindaugas,'),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildText("I'm "),
                      _buildDropInput(
                          hint: 'name',
                          options: ['Van Kenobi', 'Darth Vader', 'Kavasaki']),
                      _buildText(" and I took interset in your work."),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildText("My favorite movie is "),
                      _buildDropInput(hint: 'name it', options: [
                        'Start Wars',
                        'Harry Potter',
                        'Kill Bill Vol. 2'
                      ]),
                      _buildText(" So I do believe,"),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildText("we could "),
                      _buildDropInput(hint: 'do what?!', options: [
                        'colaborate in crime',
                        'discuss economical problems',
                        'chat about movies'
                      ]),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildText("Write or Call me back "),
                      _buildDropInput(
                          hint: 'how????',
                          options: ['email', 'social link', 'mobile']),
                      _buildText(" below."),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildDropInput(hint: 'email', options: [
                        'email@email.com',
                        'social@link.lt',
                        'mobile@maybe.dart'
                      ]),
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
    return Text(
      text,
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: ThemeColor.inactiveLight),
    );
  }

  Widget _buildOption(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w800, color: Colors.amber),
    );
  }

  Widget _buildDropInput({List<Object> options, String hint}) {
    return DropDown(
      showUnderline: false,
      items: options,
      hint: _buildHint(hint),
      customWidgets: options.map((p) => _buildOption(p)).toList(),
      onChanged: (value) => print(value),
    );
  }
}
