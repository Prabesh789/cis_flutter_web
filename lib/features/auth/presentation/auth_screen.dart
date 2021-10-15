import 'package:cis_project/features/auth/presentation/widgets/login_card.dart';
import 'package:cis_project/features/auth/presentation/widgets/register_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthScreen extends StatefulHookWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late bool isRegistered = true;

  @override
  Widget build(BuildContext context) {
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
                  child: const Text(
                    'Share your thoughts about climate change',
                    style: TextStyle(
                      fontFamily: 'Ephesis',
                      fontSize: 50,
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
            duration: const Duration(seconds: 2),
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
                : const RegisterCard(),
          ),
        ],
      ),
    );
  }
}
