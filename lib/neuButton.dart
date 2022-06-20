// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  final double? width;
  final double? height;
  final Color? bgColor;
  final EdgeInsets? padding;
  final Widget? child;
  final Alignment? position;
  const NeuButton({
    Key? key,
    this.width,
    this.height,
    this.bgColor,
    this.padding,
    this.child,
    this.position,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NeuButton();
}

class _NeuButton extends State<NeuButton> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: widget.padding,
        alignment: widget.position,
        decoration: BoxDecoration(
            color: widget.bgColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: isPressed?null: const [BoxShadow(color: Colors.white, spreadRadius: 1, blurRadius: 12, offset: Offset(-3, -3)), BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 12, offset: Offset(3, 3))]),
        child: widget.child,
      ),
    );
  }

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      isPressed=true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      isPressed=false;
    });
  }
}
