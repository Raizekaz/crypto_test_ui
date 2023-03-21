import 'package:flutter/material.dart';
import 'package:test_ui_1/themes/app_colors.dart';
import 'package:test_ui_1/themes/device_screen_size.dart';

class DraggableStepper extends StatefulWidget {
  @override
  _DraggableStepperState createState() => _DraggableStepperState();
}

class _DraggableStepperState extends State<DraggableStepper> {
  double _position = 0;

  final int _numSteps = 5;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onPanUpdate: (details) {
        setState(
          () {
            _position += details.delta.dx;
            _position = _position.clamp(
              0,
              (_numSteps - 1) * (width > 400 ? 52 : 46.5),
            );
          },
        );
      },
      child: CustomPaint(
        size: Size(ScreenSize.width(60, context), 10),
        painter: width > 400
            ? _StepperPainterLarge(_numSteps, _position)
            : _StepperPainterSmall(_numSteps, _position),
      ),
    );
  }
}

class _StepperPainterLarge extends CustomPainter {
  final int numSteps;
  final double position;

  _StepperPainterLarge(this.numSteps, this.position);

  @override
  void paint(Canvas canvas, Size size) {
    final handleSize = 14;
    final handleRadius = handleSize / 2;
    final handlePaint = Paint()..color = Color(0xFF0066FF);
    final linePaint = Paint()
      ..color = AppColors.stepper
      ..strokeWidth = 2.0;
    final centerY = size.height / 2;

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(5, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );
    canvas.drawLine(
      Offset(14, centerY),
      Offset(49, centerY),
      linePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(58, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );
    canvas.drawLine(
      Offset(67, centerY),
      Offset(102, centerY),
      linePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(111, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );
    canvas.drawLine(
      Offset(120, centerY),
      Offset(155, centerY),
      linePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(164, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );
    canvas.drawLine(
      Offset(173, centerY),
      Offset(208, centerY),
      linePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(217, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );

    final handleX = position + handleRadius;
    canvas.drawCircle(
      Offset(handleX, centerY),
      handleRadius,
      handlePaint,
    );
  }

  @override
  bool shouldRepaint(_StepperPainterLarge oldDelegate) {
    return oldDelegate.position != position;
  }
}

class _StepperPainterSmall extends CustomPainter {
  final int numSteps;
  final double position;

  _StepperPainterSmall(this.numSteps, this.position);

  @override
  void paint(Canvas canvas, Size size) {
    final handleSize = 14;
    final handleRadius = handleSize / 2;
    final handlePaint = Paint()..color = Color(0xFF0066FF);
    final linePaint = Paint()
      ..color = AppColors.stepper
      ..strokeWidth = 2.0;
    final centerY = size.height / 2;

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(5, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );
    canvas.drawLine(
      Offset(11, centerY),
      Offset(46, centerY),
      linePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(52, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );
    canvas.drawLine(
      Offset(58, centerY),
      Offset(93, centerY),
      linePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(99, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );
    canvas.drawLine(
      Offset(105, centerY),
      Offset(140, centerY),
      linePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(146, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );
    canvas.drawLine(
      Offset(152, centerY),
      Offset(187, centerY),
      linePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(193, 5),
        width: 5,
        height: 10,
      ),
      Paint()..color = AppColors.stepper,
    );

    final handleX = position + handleRadius;
    canvas.drawCircle(
      Offset(handleX, centerY),
      handleRadius,
      handlePaint,
    );
  }

  @override
  bool shouldRepaint(_StepperPainterLarge oldDelegate) {
    return oldDelegate.position != position;
  }
}
