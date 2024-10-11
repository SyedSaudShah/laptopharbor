import '../export/exports.dart';

class DawerText extends StatelessWidget {
  final String text;
  
  // Constructor to accept text as a parameter
  const DawerText(this.text, {super.key, required TextStyle style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15, 
      fontWeight: FontWeight.bold, 
        color: Colors.white, 
        letterSpacing: 1.5,
      ),
    );
  }
}


