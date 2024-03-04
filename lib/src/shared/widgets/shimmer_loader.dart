import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({
    required this.child,
    required this.isLoading,
    super.key,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? AbsorbPointer(
            child: Shimmer.fromColors(
              baseColor: const Color(0xFF8A20D5).withOpacity(.5),
              highlightColor: const Color(0xFF8A20D5).withOpacity(.3),
              child: child,
            ),
          )
        : child;
  }
}
