import 'package:laptopharbor/Text/laptoptext.dart';

import '../export/exports.dart';

class SaplishScreen extends StatelessWidget {
  const SaplishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover, // Ensures the image covers the entire screen properly
                    image: AssetImage('assets/images/background.jpeg'),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2), // Added space between logo and text
                    child: SizedBox(
                      height: size.height * 0.3, // Adjusted height for the logo to ensure proper scaling
                      width: size.width * 0.6, // Proper scaling of the logo width
                      child: Image.asset(
                        'assets/images/logo-removebg-preview.png',
                        fit: BoxFit.contain, // Makes sure the image is not stretched or squeezed
                      ),
                    ),
                  ),
                  const LaptopText(
                    'Laptop Harbor',
                    style: TextStyle(
                      fontSize: 30.0, // Adjusted font size for better scaling
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  CustomButton(
                    text: 'Get Started',
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30), // Space at the bottom of the screen
                ],
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 9, 2, 36),
      ),
    );
  }
}
