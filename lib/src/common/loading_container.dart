import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:realtor_book/src/config/custom_colors.dart';

class LoadingContainer extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const LoadingContainer({
    required this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      color: Colors.black.withAlpha(50),
      isLoading: isLoading,
      progressIndicator: CircularProgressIndicator(
        strokeWidth: 4,
        color: CustomColors.appBar,
      ),
      child: child,
    );
  }
}
