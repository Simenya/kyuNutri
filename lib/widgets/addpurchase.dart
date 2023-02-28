import 'package:flutter/material.dart';

class PurchaseNow extends StatefulWidget {
  const PurchaseNow({super.key});

  @override
  State<PurchaseNow> createState() => _PurchaseNowState();
}

class _PurchaseNowState extends State<PurchaseNow> {
  final formkey2 = GlobalKey<FormState>();
  final dishNameController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Buying", style: TextStyle(color: Colors.amberAccent)),
      content: Form(
        key: formkey2,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 8),
                  buildName(),
                  const SizedBox(width: 8),
                  buildAmount(),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildName(),
                  const SizedBox(width: 8),
                  buildAmount(),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
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
      child: const Text("Create"),
      onPressed: () {},
    );
  }
}
