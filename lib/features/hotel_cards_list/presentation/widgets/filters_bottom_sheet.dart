import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dehancer_slider/dehancer_slider.dart';

class FiltersBottomSheet extends StatelessWidget {
  const FiltersBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1.0,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 0.5),
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    "Filters",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Text(
                  "PRICE PER NIGHT",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "40+\$",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            margin: const EdgeInsets.only(left: 50),
            width: 300.w,
            child: const DehancerSlider(
              minValue: 0,
              maxValue: 100,
              defaultValue: 100,
              startValue: 0,
              value: 70,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child:
            Text(
              'RATING',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(218, 56, 53, 1),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Text(
                      "O+",

                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(253,156,21,1),
                      borderRadius: BorderRadius.circular(8)

                  ),
                  child: Center(
                    child: Text(
                      "7+",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(99,163,15,1),
                      borderRadius: BorderRadius.circular(8)

                  ),
                  child: Center(
                    child: Text(
                      "7.5+",

                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(2,129,0,1),
                      borderRadius: BorderRadius.circular(8)

                  ),
                  child: Center(
                    child: Text(
                      "8+",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0,95,0,1),
                      borderRadius: BorderRadius.circular(8)

                  ),
                  child: Center(
                    child: Text(
                      "8.5+",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,top: 16),
            child:
            Text(
              'HOTEL CLASS',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: 26.0),

          Row(
            children: [
              SizedBox(width: 20.0),
              Container(
                  height: 60.h,
                  padding: EdgeInsets.all(5.w.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      border: Border.all(color: Colors.amberAccent)),
                  child: Row(
                    children: [
                      Icon(Icons.star_half_outlined,
                          color: Colors.amberAccent, size: 20.sp),
                      Icon(Icons.star,
                          color: Colors.amberAccent, size: 20.sp),
                    ],
                  )),
              SizedBox(width: 20.0),
              Container(
                  height: 60.h,
                  padding: EdgeInsets.all(5.w.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      border: Border.all(color: Colors.amberAccent)),
                  child: Row(
                    children: [
                      Icon(Icons.star,
                          color: Colors.amberAccent, size: 20.sp),
                      Icon(Icons.star,
                          color: Colors.amberAccent, size: 20.sp),
                    ],
                  )),
              SizedBox(width: 20.0),
              Container(
                  height: 60.h,
                  padding: EdgeInsets.all(5.w.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      border: Border.all(color: Colors.amberAccent)),
                  child: Column(
                    children: [
                      Icon(Icons.star,
                          color: Colors.amberAccent, size: 19.sp),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 19.sp),
                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 19.sp),
                        ],
                      ),
                    ],
                  )),
              SizedBox(width: 20.0),
              Container(
                  height: 60.h,
                  padding: EdgeInsets.all(5.w.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      border: Border.all(color: Colors.amberAccent)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 19.sp),
                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 19.sp),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 19.sp),
                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 19.sp),
                        ],
                      ),
                    ],
                  )),
              SizedBox(width: 20.0),

              Container(
                  height: 60.h,
                  padding: EdgeInsets.all(5.w.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      border: Border.all(color: Colors.amberAccent)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 14.0),
                          SizedBox(width: 3.0),

                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 14.0),
                        ],
                      ),
                      Icon(Icons.star,
                          color: Colors.amberAccent, size: 13.0),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 14.0),
                          SizedBox(width: 3.0),

                          Icon(Icons.star,
                              color: Colors.amberAccent, size: 14.0),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,top: 32),
            child:
            Text(
              'DISTANCE FROM',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,top: 20,bottom: 16),
            child: Divider(
              thickness: 1.8,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Text(
                  "Location",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,

                  ),
                ),
              ),
              Spacer(),
              Text(
                "City center",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,

                ),

              ),
              IconButton(onPressed: (){}, icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 18,
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Container(
                width: 280,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,


                ),
                child: GestureDetector(
                  child: Center(
                    child: Text(
                      "Show results",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,

                      ),

                    ),
                  ),

                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}

