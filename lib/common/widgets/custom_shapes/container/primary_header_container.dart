import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:g/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:g/utils/constants/colors.dart';

class GPrimaryHeaderContainer extends StatelessWidget {
  const GPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GCurvedEdgeWidget(
      child: Container(
        color: GColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: GCircularContainer(
                  backgroundColor: GColors.textWhite.withOpacity(.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: GCircularContainer(
                  backgroundColor: GColors.textWhite.withOpacity(.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
