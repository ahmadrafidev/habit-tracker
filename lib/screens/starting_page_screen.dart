import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPage extends StatelessWidget {
  static const routeName = '/starting_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'HABIT',
              style: GoogleFonts.dmSans(
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                  textStyle:
                      const TextStyle(color: Color.fromRGBO(11, 128, 236, 1))),
            ),
            Text(
              'TRACKER',
              style: GoogleFonts.dmSans(
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                  textStyle:
                      const TextStyle(color: Color.fromRGBO(11, 128, 236, 1))),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(160, 58),
                shape: const StadiumBorder(),
                primary: const Color.fromRGBO(11, 128, 236, 1),
                padding: const EdgeInsets.all(10),
                textStyle: const TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 28,
                    fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signup_page');
              },
              child: const Text('SIGN UP'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(160, 58),
                  shape: const StadiumBorder(),
                  primary: const Color.fromRGBO(11, 128, 236, 1),
                  padding: const EdgeInsets.all(10),
                  textStyle: const TextStyle(
                      fontFamily: 'DMSans',
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.w400),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login_page');
                },
                child: const Text('LOG IN')),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tabs_screen');
              },
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
