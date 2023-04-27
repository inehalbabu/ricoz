import '../../constant/const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  final pages = List.generate(3, (index) => Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppStrings.inviteYourFriendToRicoz.text.fontFamily(rambla).size(30).make(),
          10.heightBox,
          AppStrings.getExcitingOffers.text.fontFamily(rambla).size(18).make(),
          8.heightBox
        ],
      ),
      Stack(
        children: [
          const CircleAvatar(
            backgroundColor: transparentColor,
            radius: 28,
            backgroundImage: AssetImage(AppImages.firstBoy),
          ).box.margin(const EdgeInsets.only(left: 60.0, bottom: 50.0)).border(color: Colors.black, width: 1.0, style: BorderStyle.solid).roundedFull.make(),
          const CircleAvatar(
            backgroundColor: transparentColor,
            radius: 28,
            backgroundImage: AssetImage(AppImages.secondBoy),
          ).box.margin(const EdgeInsets.only(top: 50, left: 20)).border(color: Colors.black, width: 1.0, style: BorderStyle.solid).roundedFull.make(),
          const CircleAvatar(
            backgroundColor: transparentColor,
            radius: 28,
            backgroundImage: AssetImage(AppImages.thirdBoy),
          ).box.margin(const EdgeInsets.only(left: 100, top: 50)).border(color: Colors.black, width: 1.0, style: BorderStyle.solid).roundedFull.make()
        ],
      )
    ],
  ).box.rounded.padding(const EdgeInsets.all(10.0)).margin(const EdgeInsets.all(8.0)).white.make());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparentColor,
        automaticallyImplyLeading: false,
        title: Image.asset(AppImages.appIcon, width: 100),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: const CircleAvatar(
            foregroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 30,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
              child: const Icon(Icons.shopping_bag_outlined, size: 27))
        ],
      ),
      backgroundColor: background,
      body: ListView(
        children: [
          10.heightBox,
          VxSwiper.builder(
              aspectRatio: 16/7.5,
              autoPlay: true,
              itemCount: 3,
              viewportFraction: 1.0,
              itemBuilder: (context, index){
              return pages[index];
              }),
          // Row(
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         AppStrings.inviteYourFriendToRicoz.text.fontFamily(rambla).size(30).make(),
          //         10.heightBox,
          //         AppStrings.getExcitingOffers.text.fontFamily(rambla).size(18).make(),
          //         8.heightBox
          //       ],
          //     ),
          //     Stack(
          //       children: [
          //         const CircleAvatar(
          //           backgroundColor: transparentColor,
          //           radius: 28,
          //           backgroundImage: AssetImage(AppImages.firstBoy),
          //         ).box.margin(const EdgeInsets.only(left: 60.0, bottom: 60.0)).border(color: Colors.black, width: 1.0, style: BorderStyle.solid).roundedFull.make(),
          //         const CircleAvatar(
          //           backgroundColor: transparentColor,
          //           radius: 28,
          //           backgroundImage: AssetImage(AppImages.secondBoy),
          //         ).box.margin(const EdgeInsets.only(top: 50, left: 20)).border(color: Colors.black, width: 1.0, style: BorderStyle.solid).roundedFull.make(),
          //         const CircleAvatar(
          //           backgroundColor: transparentColor,
          //           radius: 28,
          //           backgroundImage: AssetImage(AppImages.thirdBoy),
          //         ).box.margin(const EdgeInsets.only(left: 100, top: 50)).border(color: Colors.black, width: 1.0, style: BorderStyle.solid).roundedFull.make()
          //       ],
          //     )
          //   ],
          // ).box.rounded.padding(const EdgeInsets.all(10.0)).margin(const EdgeInsets.all(8.0)).white.make(),
          5.heightBox,
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Colors.white,
                type: WormType.thinUnderground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
