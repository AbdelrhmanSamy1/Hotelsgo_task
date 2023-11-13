import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
        return SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Text(
                        "Sort by",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.close))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Divider(thickness: 1, color: Colors.black12),
                  ),                  const Text("Our recommendations"),
                   const Padding(
                     padding: EdgeInsets.all(12.0),
                     child: Divider(thickness: 1, color: Colors.black12),
                   ),

                  const Text("Rating & Recommended"),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Divider(thickness: 1, color: Colors.black12),
                  ),
                  const Text("Price & Recommended"),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Divider(thickness: 1, color: Colors.black12),
                  ),
                  const Text(

                      "Distance & Recommended"),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Divider(thickness: 1, color: Colors.black12),
                  ),
                  const Text( "Rating Only"),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Divider(thickness: 1, color: Colors.black12),
                  ),
                  const Text(
                       "Price Only"),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Divider(thickness: 1, color: Colors.black12),
                  ),

                  const Text(
                        "Distance Only"),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Divider(thickness: 1, color: Colors.black12),
                  ),
                ],
              ),
            ));
      }
  }

