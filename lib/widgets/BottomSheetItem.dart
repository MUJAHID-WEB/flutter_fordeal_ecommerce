import 'package:flutter/material.dart';

import 'widgets.dart';

class SpecificationBottomSheet extends StatelessWidget {
  const SpecificationBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('Specifications',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.share),
          title: Text('Share'),
        ),
        ListTile(
          leading: Icon(Icons.delete),
          title: Text('Delete'),
        ),
        ButtonWithBg(
          btnName: 'Confirm',
          onPress: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}

/////// Shipment, Return, Payment

class BottomSheetItem extends StatelessWidget {
  const BottomSheetItem({
    super.key, required this.heading, required this.body,
  });

  final String heading, body;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(heading,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
        ),
       Padding(
          padding: const EdgeInsets.all(12),
          child: Text(body,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        ButtonWithBg(
          btnName: 'I got it',
          onPress: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
