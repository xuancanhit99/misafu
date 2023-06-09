import 'package:flutter/material.dart';

import '../../../../../constants/assets_strings.dart';
import '../../../../../constants/text_strings.dart';


class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(cGoogleLogo),
              width: 20,
            ),
            label: Text(cSignUpWithGoogle.toUpperCase()),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(text: cAlreadyHaveAnAccount),
                  TextSpan(
                      text: cLogin,
                      style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}