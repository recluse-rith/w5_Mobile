import 'package:flutter/material.dart';

enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disabled(Colors.grey);

  final Color color;
  const ButtonType(this.color);
}

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton({super.key, 
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.buttonType = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonContent = [];
    Widget iconWidget = Icon(icon, color: Colors.indigo);
    Widget textWidget = Text(
      label,
      style: TextStyle(color: Colors.indigo, fontSize: 18),
    );

    if (iconPosition == IconPosition.left) {
      buttonContent.add(iconWidget);
      buttonContent.add(SizedBox(width: 10));
      buttonContent.add(textWidget);
    } else {
      buttonContent.add(textWidget);
      buttonContent.add(SizedBox(width: 10));
      buttonContent.add(iconWidget);
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: buttonType.color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buttonContent,
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom buttons")),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomButton(
                label: "Submit",
                icon: Icons.check,
                buttonType: ButtonType.primary,
                iconPosition: IconPosition.left,
              ),
              CustomButton(
                label: "Time",
                icon: Icons.access_time,
                buttonType: ButtonType.secondary,
                iconPosition: IconPosition.right,
              ),
              CustomButton(
                label: "Account",
                icon: Icons.supervisor_account,
                buttonType: ButtonType.disabled,
                iconPosition: IconPosition.right,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
