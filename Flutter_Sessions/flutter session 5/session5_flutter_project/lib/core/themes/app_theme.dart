import 'dart:ui';
import 'package:flutter/material.dart';

class AppThemeBackground extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool useSafeArea;

  const AppThemeBackground({
    super.key,
    required this.child,
    this.padding,
    this.useSafeArea = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = padding != null
        ? Padding(
            padding: padding!,
            child: child,
          )
        : child;

    if (useSafeArea) {
      content = SafeArea(child: content);
    }

    return Scaffold(
      // نجعل خلفية Scaffold شفافة لأننا نستخدم الـ Stack في الخلفية
      backgroundColor: const Color(0xFF060B26),
      body: Stack(
        children: [
          const _AppThemeLayer(),
          Positioned.fill(child: content),
        ],
      ),
    );
  }
}

class _AppThemeLayer extends StatelessWidget {
  const _AppThemeLayer();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 1. الخلفية الأساسية (الـ Linear Gradient الكامل)
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.8, -1.2),
              end: Alignment(0.8, 1.2),
              colors: [
                Color(0xE6060B26),
                Color(0xDE070C27),
                Color(0xD9080D28),
                Color(0xD40A0F29),
                Color(0xCC0B102A),
                Color(0xC90C112B),
                Color(0xC70C112B),
                Color(0xC20D122C),
                Color(0xBF0D122C),
                Color(0xBC0E132D),
                Color(0xB80F142E),
                Color(0xB510152E),
                Color(0xB310152F),
                Color(0xAD11162F),
                Color(0xAB121730),
                Color(0xA6121730),
                Color(0xA3131831),
                Color(0x9E141932),
                Color(0x99151A33),
                Color(0x94161B33),
                Color(0x91161B34),
                Color(0x8C171C35),
                Color(0x8A181D35),
                Color(0x801A1F37),
              ],
              stops: [
                0.0,
                0.06,
                0.12,
                0.18,
                0.24,
                0.28,
                0.31,
                0.34,
                0.37,
                0.41,
                0.45,
                0.48,
                0.51,
                0.55,
                0.58,
                0.62,
                0.65,
                0.69,
                0.75,
                0.79,
                0.82,
                0.87,
                0.91,
                1.0,
              ],
            ),
          ),
        ),

        // 2. التوهج بالنص (الـ Glow Effect)
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // التوهج العريض (Layer Blur: 272)
              Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFA838FF).withOpacity(0.15),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(color: Colors.transparent),
                ),
              ),
              // الدائرة الأساسية (Ellipse 75) مع الـ Drop Shadow الخفيف
              Container(
                width: 176,
                height: 176,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFA838FF).withOpacity(0.12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
