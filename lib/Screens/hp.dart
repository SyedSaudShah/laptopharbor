

import '../export/exports.dart';

class HpScreen extends StatelessWidget {
  const HpScreen({super.key});

  @override
  Widget build(BuildContext context) {
       final screenSize = MediaQuery.of(context).size;

    return Scaffold(
    appBar: AppBar(title: const Text('Hp')),
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
                    child: const Icon(Icons.search,color:  Color.fromARGB(255, 9, 2, 36),),
                  ),
                ],
              ),
              const SizedBox(height: 12),

             
              SizedBox(height: screenSize.height * 0.05),

              // Expanded to allow the grid view to take the remaining space

              Expanded(
                flex: 1,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (screenSize.width < 600) ? 2 : 3,
                    childAspectRatio: (screenSize.width < 600) ? 0.75 : 1.0,
                    mainAxisSpacing: 7.0,
                    crossAxisSpacing: 7.0,
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
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

   