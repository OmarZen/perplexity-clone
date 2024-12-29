import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';

class SideBarButton extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final String text;
  const SideBarButton({
    super.key,
    required this.isCollapsed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      
      child: Row(
        mainAxisAlignment:
            isCollapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                size: 24,
              ),
              color: AppColors.iconGrey,
            ),
          ),
          isCollapsed
              ? const SizedBox()
              : Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
        ],
      ),
    );
  }
}
