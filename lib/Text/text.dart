import '../export/exports.dart';

class CustomText extends StatelessWidget {
  final String text;
  
  // Constructor to accept text as a parameter
  const CustomText(this.text, {super.key, required TextStyle style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20, 
        fontStyle: FontStyle.normal, 
        color: Colors.white, 
        letterSpacing: 1.5,
      ),
    );
  }
}




