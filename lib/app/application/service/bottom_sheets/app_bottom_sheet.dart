import 'package:flutter/material.dart';

void showAppBottomSheet({
  required BuildContext context,
  required Widget body,
  double height = 200,
  bool isDismissible = true,
}) {
  showModalBottomSheet(
    context: context,
    enableDrag: true,
    isScrollControlled: true,
    isDismissible: isDismissible,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          constraints: BoxConstraints(
            minHeight: height,
          ),
          height: height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 10),
              // bar to show the item is draggable
              Container(
                width: 100,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(1),
                ),
              ),

              const SizedBox(height: 20),

              // bottom sheet body
              body,
            ],
          ),
        ),
      );
    },
  );
}
