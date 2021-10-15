import 'package:cis_project/core/widgets/custom_button.dart';
import 'package:cis_project/core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginCard extends StatefulHookWidget {
  const LoginCard({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;

  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  bool obscureText = true;

  void _togglevisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();
    final _emailFocusNode = useFocusNode();
    final _passwordFocusNode = useFocusNode();
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: size.height / 5.7,
        left: size.width / 4,
        right: size.width / 4,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: Colors.grey.withOpacity(0.4),
          ),
        ],
      ),
      height: size.height / 2,
      width: size.width / 1.7,
      child: Column(
        children: [
          const SizedBox(height: 25),
          Text(
            'Login',
            style: GoogleFonts.ptSerif(
              textStyle: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: size.height / 10),
          CustomTextfield(
            keyboard: TextInputType.emailAddress,
            isEnabled: true,
            controller: _emailController,
            labelText: 'Email',
            prefixIcon: const Icon(
              Icons.email,
              color: Colors.grey,
            ),
            focusNode: _emailFocusNode,
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(_passwordFocusNode);
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'User Email Can not be empty';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 25),
          CustomTextfield(
            obscureText: obscureText,
            isEnabled: true,
            controller: _passwordController,
            labelText: 'Password',
            prefixIcon: const Icon(
              Icons.lock,
              color: Colors.grey,
            ),
            suffixixIcon: Padding(
              padding: const EdgeInsets.only(top: 10, right: 15),
              child: InkWell(
                onTap: _togglevisibility,
                child: Text(
                  obscureText ? 'show' : 'hide',
                  style: GoogleFonts.ptSerif(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            focusNode: _passwordFocusNode,
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
          ),
          SizedBox(height: size.height / 13),
          CustomButton(
            text: 'Login',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(),
              const Spacer(),
              InkWell(
                onTap: widget.onPressed,
                child: Text(
                  'New register',
                  style: GoogleFonts.ptSerif(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
