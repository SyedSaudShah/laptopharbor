import '../export/exports.dart';

class LaptopText extends StatelessWidget {
  final String text;
  
  // Constructor to accept text as a parameter
  const LaptopText(this.text, {super.key, required TextStyle style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30, 
      fontWeight: FontWeight.bold, 
        color: Colors.white, 
        letterSpacing: 1.5,
      ),
    );
  }
}


