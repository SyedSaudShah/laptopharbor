
import '../export/exports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Your Shoping is valuable to us!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle feedback submission logic
              },
              child: const Text('Shoping'),
            ),
          ],
        ),
      ),
    );
  }
}
