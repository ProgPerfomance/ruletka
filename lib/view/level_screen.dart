import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:sensors_plus/sensors_plus.dart';
import 'package:motion_sensors/motion_sensors.dart';
import 'dart:math' show pi;

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 22,
            bottom: 58,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _LevelButton(),
                LevelDisplay(),
                _ButtonsGroup(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LevelButton extends StatelessWidget {
  final VoidCallback? onTap;
  const _LevelButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 143,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0xff00ff59),
          foregroundColor: Colors.black,
        ),
        onPressed: onTap ?? () {},
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 23,
                height: 18,
                child: SvgPicture.asset("assets/level.svg"),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Level",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LevelDisplay extends StatelessWidget {
  const LevelDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 43.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 7.0,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: StreamBuilder<OrientationEvent>(
                stream: motionSensors.orientation,
                builder: (context, snapshot) {
                  return Text(
                    "${((snapshot.data?.pitch ?? 0) * 180 / pi).round()}° ",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  );
                }),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 7.0,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonsGroup extends StatelessWidget {
  const _ButtonsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CameraButton(),
          _LockButton(),
          _ToolsButton(),
        ],
      ),
    );
  }
}

class _CameraButton extends StatefulWidget {
  final bool enabled;
  final VoidCallback? onTap;
  const _CameraButton({
    super.key,
    this.enabled = false,
    this.onTap,
  });

  @override
  State<_CameraButton> createState() => _CameraButtonState();
}

class _CameraButtonState extends State<_CameraButton> {
  late bool enabled;

  @override
  void initState() {
    super.initState();
    enabled = widget.enabled;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          enabled = !enabled;
        });
        widget.onTap?.call();
      },
      child: Container(
        width: 56,
        height: 56,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0x57000000),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: enabled
              ? SvgPicture.asset("assets/camera.svg")
              : SvgPicture.asset(
                  "assets/nocamera.svg",
                ),
        ),
      ),
    );
  }
}

class _ToolsButton extends StatefulWidget {
  final bool enabled;
  final VoidCallback? onTap;

  const _ToolsButton({
    super.key,
    this.enabled = false,
    this.onTap,
  });

  @override
  State<_ToolsButton> createState() => _ToolsButtonState();
}

class _ToolsButtonState extends State<_ToolsButton> {
  late bool enabled;

  @override
  void initState() {
    super.initState();
    enabled = widget.enabled;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          enabled = !enabled;
        });
        widget.onTap?.call();
      },
      child: Container(
        width: 56,
        height: 56,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0x57000000),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: enabled
              ? Center(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset(
                      "assets/plus.svg",
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              : Center(
                  child: SizedBox(
                    width: 22,
                    height: 22,
                    child: SvgPicture.asset(
                      "assets/tools.svg",
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class _LockButton extends StatefulWidget {
  final bool enabled;
  final VoidCallback? onTap;
  const _LockButton({
    super.key,
    this.enabled = false,
    this.onTap,
  });

  @override
  State<_LockButton> createState() => _LockButtonState();
}

class _LockButtonState extends State<_LockButton> {
  late bool enabled;
  @override
  void initState() {
    super.initState();
    enabled = widget.enabled;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          enabled = !enabled;
        });
        widget.onTap?.call();
      },
      child: Container(
        width: 83,
        height: 83,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff00ff47), Color(0xff00ffb2)],
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff00ff47).withOpacity(0.4),
                spreadRadius: 5,
                blurRadius: 5,
              ),
            ]),
        child: Center(
          child: enabled
              ? Center(
                  child: SizedBox(
                    width: 32,
                    height: 39,
                    child: SvgPicture.asset(
                      "assets/unlock.svg",
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              : Center(
                  child: SizedBox(
                    width: 32,
                    height: 39,
                    child: SvgPicture.asset(
                      "assets/lock.svg",
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
