import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key, required this.current, this.onChanged});
  final bool current;
  final Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).darkMode,
          style: Styles.textStyleNormal14,
        ),
        const Spacer(),
        AnimatedToggleSwitch<bool>.dual(
          current: current,
          first: false,
          second: true,
          spacing: 20,
          indicatorSize: const Size(35, 25),
          style: const ToggleStyle(
            borderColor: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1.5),
              ),
            ],
          ),
          borderWidth: 5,
          height: 35,
          onChanged: onChanged,
          styleBuilder: (value) {
            return ToggleStyle(
              indicatorColor: value ? AppColors.primaryDark : Colors.white,
            );
          },
          textBuilder: (value) {
            return value
                ? Text(
                    S.of(context).darkSwitch,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.primary,
                    ),
                  )
                : Text(
                    S.of(context).lightSwitch,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.primary,
                    ),
                  );
          },
          iconBuilder: (value) {
            return value
                ? const Icon(
                    Icons.dark_mode,
                    color: AppColors.primary,
                  )
                : const Icon(
                    Icons.light_mode,
                    color: AppColors.primary,
                  );
          },
        ),
      ],
    );
  }
}
