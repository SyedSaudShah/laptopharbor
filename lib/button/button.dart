
import '../export/exports.dart';class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0), // Add horizontal padding
      child: Container(
        decoration: const BoxDecoration(border: Border()),
        width: double.infinity, // Take up the full width within the padding
        child: Material(
          color: const Color.fromARGB(255, 1, 44, 106),
          borderRadius: BorderRadius.circular(30.0), // Increased for fully rounded corners
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(30.0), // Match this with the Material borderRadius
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
