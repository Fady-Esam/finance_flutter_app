import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateRangeFilter extends StatelessWidget {
  const DateRangeFilter({super.key, required this.selectedDateRange, this.onTap});
  final DateTimeRange selectedDateRange;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      ),
      onPressed: onTap,
      child: Text('${DateFormat.yMMMd().format(selectedDateRange.start)} - ${DateFormat.yMMMd().format(selectedDateRange.end)}',
      ),
    );
  }
}
