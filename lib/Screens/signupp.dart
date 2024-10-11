

import '../export/exports.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _name = '';
  String? _errorMessage;

  void _login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Dummy authentication
      if (_email == 'user' && _password == 'pass' && _name == 'name') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login successful!')),
        );
        // Proceed with navigation or other actions
      } else {
        setState(() {
          _errorMessage = 'Invalid username or password.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
     final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomContainer(
              text: '',
              child: Column(children: [Center(
                child:CustomLoginText('Laptop Harbor',
                            style: TextStyle()),
                    
              )],)
              
              //SizedBox.shrink(), // No additional child in the top container
            ),
          ),
          Positioned(
            top: 250, // Adjust based on the height of the first container
            left: 0,
            right: 0,
            bottom: 0, // Allow the second container to occupy the rest of the space
            child: Container(
             decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(8), // Rounded corners
               border: Border.all(
                 color: Colors.white, // Border color
                 width: 2, // Border width
               ),), // Distinct background color for this container
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const  CustomText(
                        'Signup ',
                        style: TextStyle(),
                      ),
                      
                      SizedBox(height: screenSize.height * 0.05),// SizedBox for spacing,
                                            TextFormField(
  decoration: InputDecoration(
    labelText: 'Email',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0), // Rounded corners
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.green, // Border color when the field is not focused
        width: 2.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.blue, // Border color when the field is focused
        width: 2.0,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.red, // Border color when there's an error
        width: 2.0,
      ),
    ),
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  },
  onSaved: (value) {
    _email = value!;
  },
),
const SizedBox(height: 6,),
                                           TextFormField(
  decoration: InputDecoration(
    labelText: 'Name',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0), // Rounded corners
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.green, // Border color when the field is not focused
        width: 2.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.blue, // Border color when the field is focused
        width: 2.0,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.red, // Border color when there's an error
        width: 2.0,
      ),
    ),
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Name';
    }
    return null;
  },
  onSaved: (value) {
    _name = value!;
  },
),
                      const SizedBox(height: 6,),
                      TextFormField(
  decoration: InputDecoration(
    labelText: 'Password',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.green,
        width: 2.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.blue,
        width: 2.0,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2.0,
      ),
    ),
  ),
  obscureText: true,
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  },
  onSaved: (value) {
    _password = value!;
  },
),

                      const SizedBox(height: 20),
                      CustomButton(
                        text: 'Signup',
                        onPressed: () {
                          _login;
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen(),));
                        },
                        
                      ),
                      if (_errorMessage != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            _errorMessage!,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }}