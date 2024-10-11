import 'package:laptopharbor/Text/dawertext.dart';

import '../export/exports.dart';

// Create 3 separate screens for Dell, Toshiba, and HP

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedLaptop;
  String activeIcon = 'home'; // Track which icon is active

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 44, 106),
        title: const CustomLoginText(
          '',
          style: TextStyle(),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 1, 44, 106),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer header with image and user info
            const UserAccountsDrawerHeader(
              accountName: Text('O\'Kelly'),
              accountEmail: Text('okelly@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/home.jpeg'), // Your profile image
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 44, 106),
              ),
            ),
            // Home item
            ListTile(
              leading: Icon(Icons.home,
                  color: activeIcon == 'home' ? Colors.white : Colors.grey),
              title: const DawerText(
                'Home',
                style: TextStyle(),
              ),
              onTap: () {
                setState(() {
                  activeIcon = 'home'; // Change the icon to active state
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            // Dropdown for selecting laptop brand
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: DropdownButton<String>(
                value: selectedLaptop,
                hint: const DawerText(
                  'Select Laptop Brand',
                  style: TextStyle(),
                ),
                icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                dropdownColor: const Color.fromARGB(255, 1, 44, 106),
                isExpanded: true,
                items: const [
                  DropdownMenuItem(
                    value: 'Dell',
                    child: DawerText(
                      'Dell',
                      style: TextStyle(),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Toshiba',
                    child: DawerText(
                      'Toshiba',
                      style: TextStyle(),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Hp',
                    child: DawerText(
                      'HP',
                      style: TextStyle(),
                    ),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLaptop = newValue;
                  });

                  // Navigate based on selection
                  if (newValue == 'Dell') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DelScreen()));
                  } else if (newValue == 'Toshiba') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ToshibaScreen()));
                  } else if (newValue == 'Hp') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HpScreen()));
                  }
                },
              ),
            ),
            // Feedback item
            ListTile(
              leading: Icon(Icons.feedback,
                  color: activeIcon == 'feedback' ? Colors.white : Colors.grey),
              title: const DawerText(
                'Feedback',
                style: TextStyle(),
              ),
              onTap: () {
                setState(() {
                  activeIcon = 'feedback'; // Change the icon to active state
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const FeedbackScreen()), // Navigate to feedback screen
                );
              },
            ),
            //Cart item
            ListTile(
              leading: Icon(Icons.shopping_cart,
                  color: activeIcon == 'feedback' ? Colors.white : Colors.grey),
              title: const DawerText(
                'Add to Cart',
                style: TextStyle(),
              ),
              onTap: () {
                setState(() {
                  activeIcon = 'Add to Cart'; // Change the icon to active state
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const CartScreen()), // Navigate to feedback screen
                );
              },
            ),
            // Sign Out item
            ListTile(
              leading: Icon(Icons.exit_to_app,
                  color: activeIcon == 'signout' ? Colors.white : Colors.grey),
              title: const DawerText(
                'Sign Out',
                style: TextStyle(),
              ),
              onTap: () {
                setState(() {
                  activeIcon = 'signout'; // Change the icon to active state
                });
                // Perform sign out logic here
                Navigator.pop(context); // Close the drawer
                // You can add further logic for signing out the user here, e.g., redirect to login
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Search functionality and top image code remains unchanged
              Row(
                children: [
                  // Search Text Field
                  Expanded(
                    child: Center(
                      child: TextField(
                        // controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search here...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Space between the field and button
                  // Search Button or Icon
                  ElevatedButton(
                    onPressed: () {
                      // Handle search logic
                      // print('Searching for: ${_searchController.text}');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      backgroundColor: const Color.fromARGB(255, 235, 234, 238),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 9, 2, 36),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Top container for the image
              Container(
                width: double.infinity,
                height: screenSize.height * 0.2, // Adjust height as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 17, 2, 78),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/home.jpeg'),
                  ),
                ),
              ),
              SizedBox(
                  height: screenSize.height * 0.05), // SizedBox for spacing
              const Column(
                children: [   CustomText(
                        'All Products',
                        style: TextStyle(),
                      ),
                  ],
              ),
              SizedBox(
                  height: screenSize.height * 0.05), // SizedBox for spacing
              // Expanded to allow the grid view to take the remaining space

              Expanded(
                  flex: 1,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: (screenSize.width < 600) ? 2 : 3,
                        childAspectRatio: (screenSize.width < 600) ? 0.75 : 1.0,
                        mainAxisSpacing: 4.0,
                        crossAxisSpacing: 4.0,
                      ),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailScreen(itemIndex: index + 1),
                                ),
                              );
                            },
                            child: Center(
                              child: SizedBox(
                                height: screenSize.height * 0.6,
                                width: screenSize.width *
                                    0.45, // Increased width slightly
                                child: Card(
                                  elevation: 8,
                                  //   color: const Color.fromARGB(255, 235, 234, 238),
                                  shape: const RoundedRectangleBorder(
                                    // Ensures no circular effect
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: screenSize.height * 0.15,
                                        width: screenSize.width *
                                            0.45, // Adjusted width accordingly
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/google.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ));
                      }))
            ],
          ),
        ),
      ),
    );
  }
}

// DetailScreen class to display item details
class DetailScreen extends StatelessWidget {
  final int itemIndex;

  const DetailScreen({super.key, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail for Item $itemIndex'),
      ),
      body: Center(
        child: Text(
          'Details for Item $itemIndex',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
