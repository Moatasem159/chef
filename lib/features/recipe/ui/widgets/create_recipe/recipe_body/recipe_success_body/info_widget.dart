part of '../recipe_body.dart';

class _InfoWidget extends StatelessWidget {
  final String value;

  const _InfoWidget({required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: Icon(
              Icons.radar_rounded,
              size: 18,
            ),
          ),
          horizontalSpace(5),
          Expanded(
            child: Text(
              value,
              maxLines: null,
              style: AppTextStyles.style16Normal,
            ),
          ),
        ],
      ),
    );
  }
}