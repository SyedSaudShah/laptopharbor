
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
        height: 70,  // Height of the button
        width: 130,   // Set width equal to height for a circular button
        child: Material(
          color: const Color.fromARGB(255, 1, 44, 106),
          borderRadius: BorderRadius.circular(30.0), // Half of the height and width to make it fully circular
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(30.0), // Same borderRadius for the ripple effect
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
