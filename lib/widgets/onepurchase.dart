import 'package:flutter/material.dart';

class AddPurchase extends StatefulWidget {
  const AddPurchase({super.key});

  @override
  State<AddPurchase> createState() => _AddPurchaseState();
}

class _AddPurchaseState extends State<AddPurchase> {
  final formkey1 = GlobalKey<FormState>();
  final dishNameController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add Food to Menu",
          style: TextStyle(color: Colors.amberAccent)),
      content: Form(
        key: formkey1,
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
