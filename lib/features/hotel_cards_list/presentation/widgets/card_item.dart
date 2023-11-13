import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/CardsListModel.dart';

class CardItem extends StatelessWidget {
  final CardsListItem? cardsListItem;
  const CardItem(this.cardsListItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      elevation: 100,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r)),
                  child: CachedNetworkImage(
                      height: 140.h,
                      width: 600.w,
                      fit: BoxFit.fill,
                      imageUrl: cardsListItem?.image ?? "",
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error_outline)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Row(children: [
                  RatingStars(
                    value: cardsListItem?.starts?.toDouble() ?? 0,
                    starCount: 5,
                    starSize: 14.sp,
                    maxValue: 5,
                    starSpacing: 1.w,
                    maxValueVisibility: false,
                    valueLabelVisibility: false,
                    animationDuration: const Duration(milliseconds: 1000),
                    starOffColor: Colors.grey,
                    starColor: Colors.blue,
                  ),
                  SizedBox(width: 4),
                  Text("Hotel", ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  cardsListItem?.name ?? "",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(99,163,15,1),
                        borderRadius: BorderRadius.circular(16)),
                    width: 44,
                    height: 26,
                    child:  Center(
                        child: Text(
                          cardsListItem?.reviewScore.toString() ?? "",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(width: 6.0),
                  Icon(Icons.location_pin, size: 12,color: Colors.black45,),
                  SizedBox(width: 6.0),
                  Text(cardsListItem?.review ?? "",style: TextStyle(
                    color: Colors.black54,
                  ),),
                  SizedBox(width: 6.0),
                  Text(cardsListItem?.address ?? "",style: TextStyle(
                    color: Colors.black54,
                  ),),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    'Our Lowest Price',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              const Spacer(),
                               Text(
                                cardsListItem?.price.toString() ?? "",
                                style: TextStyle(
                                    color: Color.fromRGBO(99,163,15,1),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Text("Renissance"),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'View Deal',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(

                    onPressed: () {},
                    child: const Text(

                      'More Prices',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    )),
              )
            ],
          ),




          Padding(
            padding: EdgeInsets.only(top: 15.h, right: 15.w),
            child: Align(
                alignment: Alignment.topRight,
                child: Container(
                    padding: EdgeInsets.all(5.w.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: Colors.black12,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.favorite_outline_rounded,
                          color: Colors.white),
                    ))),
          ),
        ],
      ),
    );
  }
}
