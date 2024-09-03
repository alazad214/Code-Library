import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String selectedOption = 'User';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('রেজিস্ট্রেশন স্ক্রিন'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Radio button
              RadioListTile<String>(
                title: Text('User'),
                value: 'User',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: Text('Company'),
                value: 'Company',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              // Conditional rendering based on selected option
              if (selectedOption == 'User')
                UserRegistrationForm()
              else if (selectedOption == 'Company')
                CompanyRegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }
}

// User Registration Form
class UserRegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Phone'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Full Name'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Confirm Password'),
          obscureText: true,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Submit button pressed
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}

// Company Registration Form
class CompanyRegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Company Name'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Client Name'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Phone'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Designation'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Phone2'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Office Address'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Confirm Password'),
          obscureText: true,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Submit button pressed
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
