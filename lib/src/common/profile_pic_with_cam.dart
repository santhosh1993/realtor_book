import 'package:flutter/material.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/images.dart';

import 'loading_container.dart';

class ProfilePicWithCam extends StatelessWidget {
  final double width;
  final double height;
  final String picUrl;
  final Function() onTap;

  ProfilePicWithCam(
      {required this.width,
      required this.height,
      required this.picUrl,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Stack(
          children: [
            Container(
                width: width,
                height: height,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(width / 2),
                    child: (picUrl.isNotEmpty)
                        ? Image.network(
                            this.picUrl,
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, chunk) {
                              if (chunk == null) {
                                return child;
                              }
                              return LoadingContainer(
                                  child: defaultPorfilePic(), isLoading: true);
                            },
                            errorBuilder: (context, object, trace) {
                              return defaultPorfilePic();
                            },
                          )
                        : defaultPorfilePic())),
            Positioned(
              bottom: 2,
              right: 2,
              child: Container(
                  width: 40, height: 40, child: Image.asset(Images.camera())),
            )
          ],
        ),
      ),
    );
  }

  Widget defaultPorfilePic() {
    return Container(
      child: Icon(Icons.person, size: 70, color: Colors.white),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [CustomColors.background1, CustomColors.background2])),
    );
  }
}
