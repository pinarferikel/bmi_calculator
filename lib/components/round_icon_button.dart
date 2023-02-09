import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, @required this.icon, @required this.onPress})
      : super(key: key);

  final IconData? icon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      disabledElevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        //butonun büyüklüğünü ayarlar
        width: 56.0,
        height: 56.0,
      ),
      shape:
          const CircleBorder(), //RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
