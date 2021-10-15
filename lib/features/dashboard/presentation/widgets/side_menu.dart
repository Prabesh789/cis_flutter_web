import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 50,
                color: Colors.grey.withOpacity(0.2),
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(height: 100),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue[100],
              ),
              const SizedBox(height: 50),
              Text(
                'Prabesh Rai',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Text(
                'Flutter developer, founder of \nPR flims production',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
