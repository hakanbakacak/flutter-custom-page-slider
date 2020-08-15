import 'package:flutter/material.dart';


class CustomSlider extends StatefulWidget {
  final List<Container> pages;
  CustomSlider({@required this.pages});
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    if ((index < widget.pages.length) && (index > 0)) {
      _selectedIndex = index;
    } else if (index == -1) {
      _selectedIndex = widget.pages.length-1;
    } else {
      _selectedIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
                  child: GestureDetector(
                    onHorizontalDragEnd: (details) {
                      if(details.velocity.pixelsPerSecond.dx>0){
                        setState(() {
                          selectedIndex--;
                        });
                      }
                      else{
                        setState(() {
                          selectedIndex++;
                        });
                      }
                    },
                                      child: widget.pages[selectedIndex]
                  ),
        ),
        Container(
          height: 26,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.pages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 30,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.white38),
                    ),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
