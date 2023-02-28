import 'package:flutter/material.dart';


class AddPurchase extends StatefulWidget {
  const AddPurchase({super.key});

  @override
  State<AddPurchase> createState() => _AddPurchaseState();
}

class _AddPurchaseState extends State<AddPurchase> {
  final formkey2 = GlobalKey<FormState>();
  final dishNameController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:
          const Text("Purchase", style: TextStyle(color: Colors.amberAccent)),
      content: Form(
        key: formkey2,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              buildName(),
              const SizedBox(height: 8),
              buildAmount(),
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
          hintText: 'Dish',
        ),
        validator: (name) =>
            name != null && name.isEmpty ? 'Choose dish name' : null,
      );

  Widget buildAmount() => TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Amount',
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
      child: const Text("Purchase"),
      onPressed: () {},
    );
  }
}
