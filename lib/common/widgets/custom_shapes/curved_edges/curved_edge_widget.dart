import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/curved_edges/custom_curved_edges.dart';

class GCurvedEdgeWidget extends StatelessWidget {
  const GCurvedEdgeWidget({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: GCustomCurvedEdges(),
      child: child,
    );
  }
}
