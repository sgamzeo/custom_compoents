// custom_components/lib/components/lists/custom_list_tile.dart
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final List<CustomListTileAction>? actions;

  const CustomListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: actions != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: actions!
                  .map(
                    (action) => IconButton(
                      icon: action.icon,
                      onPressed: action.onPressed,
                    ),
                  )
                  .toList(),
            )
          : null,
    );
  }
}

class CustomListTileAction {
  final Widget icon;
  final VoidCallback onPressed;

  CustomListTileAction({required this.icon, required this.onPressed});
}
