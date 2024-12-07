// registration_form.dart
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController _nameController = TextEditingController();
  String _selectedGender = 'Female';
  bool _connectInstagram = false;
  bool _flutterSelected = false;
  bool _javaSelected = false;
  bool _cSharpSelected = false;
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name TextField
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "What's your name?",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Gender Dropdown
            const Text("Gender", style: TextStyle(fontSize: 16)),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: DropdownButton<String>(
                value: _selectedGender,
                isExpanded: true,
                underline: Container(),
                items: const [
                  DropdownMenuItem(value: 'Female', child: Text('Female')),
                  DropdownMenuItem(value: 'Male', child: Text('Male')),
                ],
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() {
                      _selectedGender = value;
                    });
                  }
                },
              ),
            ),
            const SizedBox(height: 16),

            // Connect Instagram Switch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Connect Instagram"),
                Switch(
                  value: _connectInstagram,
                  onChanged: (bool value) {
                    setState(() {
                      _connectInstagram = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Gender Radio Buttons
            const Text("Gender", style: TextStyle(fontSize: 16)),
            RadioListTile(
              title: const Text('Female'),
              value: 'Female',
              groupValue: _selectedGender,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _selectedGender = value;
                  });
                }
              },
            ),
            RadioListTile(
              title: const Text('Male'),
              value: 'Male',
              groupValue: _selectedGender,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _selectedGender = value;
                  });
                }
              },
            ),

            // Programming Languages Checkboxes
            CheckboxListTile(
              title: const Text('Flutter'),
              value: _flutterSelected,
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    _flutterSelected = value;
                  });
                }
              },
            ),
            CheckboxListTile(
              title: const Text('Java'),
              value: _javaSelected,
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    _javaSelected = value;
                  });
                }
              },
            ),
            CheckboxListTile(
              title: const Text('C#'),
              value: _cSharpSelected,
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    _cSharpSelected = value;
                  });
                }
              },
            ),

            // Birth Date Picker
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Birth date: ${_selectedDate.toString().split(' ')[0]}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Icon(Icons.calendar_today),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}