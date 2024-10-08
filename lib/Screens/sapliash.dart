
import '../export/exports.dart';
class SaplishScreen extends StatelessWidget {
  const SaplishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration( image: DecorationImage(
                image: AssetImage('assets/images/ca.gif'), // Path to your image
                fit: BoxFit.cover, // Ensures the image covers the entire screen
              ),),
                width: size.width,
                height: size.height * 0.7,
                child: const Center(
                  child: CustomText('Discover the Best Deals on Top-Quality Laptops!'),
                ),
              ),
              const Spacer(),
              CustomButton(
                text: 'Login', 
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: 'Signup', 
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 9, 2, 36),
      ),
    );
  }
}
