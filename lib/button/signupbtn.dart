
import '../export/exports.dart';

class Signupbtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Signupbtn({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: .0),
      child: Container(
        decoration: const BoxDecoration(),
       height: 60,
        width: 100, // Take up the full width
        child: Material(
          color:  const Color.fromARGB(255, 9, 2, 36),
          borderRadius: BorderRadius.circular(8.0),
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}