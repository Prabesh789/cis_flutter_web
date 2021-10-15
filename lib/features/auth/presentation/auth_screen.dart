import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:cis_project/app_setup/route/app_route.dart';
import 'package:cis_project/core/responsive.dart';
import 'package:cis_project/core/widgets/custom_button.dart';
import 'package:cis_project/core/widgets/custom_textfield.dart';
import 'package:cis_project/features/auth/presentation/widgets/login_card.dart';
import 'package:cis_project/features/auth/presentation/widgets/register_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulHookWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late bool isRegistered = true;
  final _registerFormkey = GlobalKey<FormState>();
  bool obscureText = true;

  void _togglevisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _nameController = useTextEditingController();
    final _emailController = useTextEditingController();
    final _addressController = useTextEditingController();
    final _passwordController = useTextEditingController();
    final _emailFocusNode = useFocusNode();
    final _passwordFocusNode = useFocusNode();
    final _addressFocusNode = useFocusNode();
    final _nameFocusNode = useFocusNode();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Colors.blue[200]!, Colors.white],
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: size.width / 22),
                SizedBox(
                  width: size.width / 2,
                  child: Responsive.isDesktop(context)
                      ? const Text(
                          'Share your thoughts about climate change',
                          style: TextStyle(
                            fontFamily: 'Ephesis',
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        )
                      : const Text(
                          'Share your thoughts about climate change',
                          style: TextStyle(
                            fontFamily: 'Ephesis',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                  child: SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/earth.jpg',
                        height: size.height / 6,
                        width: size.width / 5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: size.width / 22)
              ],
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: isRegistered
                ? LoginCard(onPressed: () {
                    setState(() {
                      isRegistered = false;
                    });
                  })
                : registeredCard(
                    size,
                    _nameController,
                    _nameFocusNode,
                    context,
                    _emailFocusNode,
                    _emailController,
                    _addressFocusNode,
                    _addressController,
                    _passwordFocusNode,
                    _passwordController,
                  ),
          ),
        ],
      ),
    );
  }

  Form registeredCard(
      Size size,
      TextEditingController _nameController,
      FocusNode _nameFocusNode,
      BuildContext context,
      FocusNode _emailFocusNode,
      TextEditingController _emailController,
      FocusNode _addressFocusNode,
      TextEditingController _addressController,
      FocusNode _passwordFocusNode,
      TextEditingController _passwordController) {
    return Form(
      key: _registerFormkey,
      child: Container(
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
        height: size.height / 1.7,
        width: size.width / 1.7,
        child: Column(
          children: [
            const SizedBox(height: 25),
            Text(
              'Register',
              style: GoogleFonts.ptSerif(
                textStyle: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: size.height / 15),
            CustomTextfield(
              keyboard: TextInputType.emailAddress,
              isEnabled: true,
              controller: _nameController,
              // widget.nameController,
              labelText: 'Full Name',
              prefixIcon: const Icon(
                Icons.person,
                color: Colors.grey,
              ),
              focusNode: _nameFocusNode,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(_emailFocusNode);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'User name can not be empty!';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 25),
            CustomTextfield(
              keyboard: TextInputType.emailAddress,
              isEnabled: true,
              controller: _emailController,
              // widget.emailController,
              labelText: 'Email',
              prefixIcon: const Icon(
                Icons.email,
                color: Colors.grey,
              ),
              focusNode: _emailFocusNode,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(_addressFocusNode);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'User email can not be empty!';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 25),
            CustomTextfield(
              keyboard: TextInputType.emailAddress,
              isEnabled: true,
              controller: _addressController,
              // widget.addressController,
              labelText: 'Country',
              prefixIcon: const Icon(
                Icons.map_outlined,
                color: Colors.grey,
              ),
              focusNode: _addressFocusNode,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(_passwordFocusNode);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Country is required';
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
              // widget.passwordController,
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
              text: 'Register',
              onPressed: () async {
                setState(() {
                  isRegistered = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
