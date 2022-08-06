import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class OptionSelector extends StatefulWidget {
  final Function(int) onSelected;

  const OptionSelector({
    Key? key,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<OptionSelector> createState() => _OptionSelectorState();
}

class _OptionSelectorState extends State<OptionSelector> {
  int selectedOption = 0;

  @override
  void initState() {
    selectedOption = 0;
    widget.onSelected(selectedOption);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OptionButton(
            title: "Confirmed",
            isSelected: selectedOption == 0,
            onTap: () {
              setState(() {
                selectedOption = 0;
              });
              widget.onSelected(selectedOption);
            },
          ),
          OptionButton(
            title: "Pending",
            isSelected: selectedOption == 1,
            onTap: () {
              setState(() {
                selectedOption = 1;
              });
              widget.onSelected(selectedOption);
            },
          ),
          OptionButton(
            title: "Rejected",
            isSelected: selectedOption == 2,
            onTap: () {
              setState(() {
                selectedOption = 2;
              });
              widget.onSelected(selectedOption);
            },
          ),
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionButton({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 40,
        width: 85.w / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? AppColor.primary : Colors.transparent,
          border: Border.all(
            color: isSelected ? Colors.transparent : AppColor.grey,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Mulish",
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : AppColor.grey,
            ),
          ),
        ),
      ),
    );
  }
}
