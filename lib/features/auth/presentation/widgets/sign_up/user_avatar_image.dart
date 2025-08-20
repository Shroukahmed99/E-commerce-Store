import 'package:ecommerce_store/core/common/animations/animate_do.dart';

import 'package:flutter/material.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return          const      CustomFadeInDown(
      duration: 600,
      child: CircleAvatar(
        radius: 38,
        backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1751225750479-43ad27b94fa0?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
      ),
    );
   
  }
}
