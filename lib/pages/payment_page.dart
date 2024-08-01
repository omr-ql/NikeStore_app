import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _country = '';
  String _shoeSize = '';
  String _address = '' ;
  String _phoneNumber = '' ;

  // DONE : What The User Should Enter
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Handle form submission logic here
      print('Name: $_name');
      print('Country: $_country');
      print('Shoe Size: $_shoeSize');
      print('Address : $_address' );
      print('Phone Number : $_phoneNumber' );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Details sent successfully!')),
      );
      _showConfirmationDialog();
    }
  }
  // DONE : Show Box Dialog
  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey,
        title: const Text('Order Confirmation' , style: TextStyle(fontWeight: FontWeight.bold )),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Everything has been done. \nWe will call you after we ship your order.' , style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 16),
              Lottie.asset(
                'assets/bus_animation.json',
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK' , style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Payment Details Title
                const Text(
                  'Payment Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 24),
                // NOTE: Logo
                Center(
                  child: Image.asset(
                    'images/logo1.png',
                    height: 100,
                  ),
                ),
                const SizedBox(height: 24),
                // NOTE: Subtitle
                const Center(
                  child: Text(
                    'Enter Your Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // DONE : Form
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        // DONE : Name Area
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _name = value!;
                        },
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        // DONE : Country Area
                        decoration: const InputDecoration(
                          labelText: 'Country Shipment',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your country';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _country = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        // DONE : Shoes Area
                        decoration: const InputDecoration(
                          labelText: 'Shoe Size',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your shoe size';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _shoeSize = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        // DONE : Address Area
                        decoration: const InputDecoration(
                          labelText: 'Address',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your address';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _address = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        // DONE : Phone Number Area
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _phoneNumber = value! ;
                        },
                      ),
                      const SizedBox(height: 32),
                      Center(
                        // DONE : Submit Button With Directed Route to End of The App
                        child: GestureDetector(
                          onTap: _submitForm,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: const Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}