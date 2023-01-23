import 'package:flutter/material.dart';

class AddToMenu extends StatefulWidget {
  const AddToMenu({super.key});

  @override
  State<AddToMenu> createState() => _AddToMenuState();
}

class _AddToMenuState extends State<AddToMenu> {
  final formKey = GlobalKey<FormState>();
  final dishNameController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add Food to Menu",
          style: TextStyle(color: Colors.amberAccent)),
      content: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 8),
              buildName(),
              const SizedBox(height: 8),
              buildAmount(),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        buildCancelButton(context),
        buildAddButton(context),
      ],
    );
  }

  Widget buildName() => TextFormField(
        controller: dishNameController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Name',
        ),
        validator: (name) =>
            name != null && name.isEmpty ? 'Enter a name' : null,
      );

  Widget buildAmount() => TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Amount',
        ),
        keyboardType: TextInputType.number,
        validator: (amount) => amount != null && double.tryParse(amount) == null
            ? 'Enter a valid number'
            : null,
        controller: amountController,
      );
  Widget buildCancelButton(BuildContext context) => TextButton(
        child: const Text('Cancel'),
        onPressed: () => Navigator.of(context).pop(),
      );
  Widget buildAddButton(BuildContext context) {
    return TextButton(
      child: const Text("Add"),
      onPressed: () {},
    );
  }
}
