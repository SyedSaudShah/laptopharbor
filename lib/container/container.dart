import '../export/exports.dart';

class CustomContainer extends StatelessWidget {
  final Widget child; // To allow different content inside the container
  final double width;
  final double height;
  final String text;

  const CustomContainer({
    super.key,
    required this.child,
    this.width = 300,
    this.height = 200,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 9, 2, 36), // Background color
        borderRadius: BorderRadius.circular(10), // Rounded corners
        border: Border.all(
          color: Colors.white, // Border color
          width: 0, // Border width
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 17,
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
const SizedBox(height: 30,),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white, // Text color
              fontSize: 20, // Adjust font size as needed
              fontWeight: FontWeight.bold, // Text style
            ),
          ),
          const SizedBox(height: 0), // Space between text and child
          Expanded(child: Center(child: child)), // Center the child widget
        ],
      ),
    );
  }
}

