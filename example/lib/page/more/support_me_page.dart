import 'package:example/page/more/cryptocurrency_page.dart';
import 'package:example/widget/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportMePage extends StatefulWidget {
  const SupportMePage({Key? key}) : super(key: key);

  @override
  State<SupportMePage> createState() => _SupportMePageState();
}

class _SupportMePageState extends State<SupportMePage> {
  static const String _alipayChannel =
      "com.codiss.easy.refresh.example/channel";
  final String _alipayDonation = "aliPayDonation";
  static const _alipayIconPath =
      'M604.190372 712.308649c-197.156858 254.395946-438.833007 178.077163-476.992399 158.997466-95.39848-25.439595-127.197973-197.156858-6.359898-254.395946 197.156858-63.598986 375.23402 6.359898 502.431993 69.958885C610.550271 705.948751 604.190372 712.308649 604.190372 712.308649zM814.067027 642.349764c89.038581-158.997466 120.838074-311.635034 120.838074-311.635034l-19.079696 0-133.557871 0L635.989866 330.71473 635.989866 216.236554l349.794426 0L985.784291 171.717264 635.989866 171.717264 635.989866 0 476.992399 0l0 171.717264-317.994932 0 0 50.87919 317.994932 0 0 114.478176L209.876656 337.074629l0 50.87919 546.951284 0c0 6.359898 0 6.359898-6.359898 19.079696 0 57.239088-38.159392 133.557871-69.958885 197.156858-407.033514-158.997466-521.51169-63.598986-553.311183-50.87919-267.115744 190.796959-19.079696 432.473108 25.439595 426.11321 286.195439 63.598986 470.6325-57.239088 597.830473-209.876656 6.359898 6.359898 19.079696 6.359898 25.439595 6.359898 89.038581 50.87919 508.791892 248.036047 508.791892 248.036047l0-241.676149C1208.380744 775.907636 979.424393 699.588852 814.067027 642.349764z';
  static const _wechatIconPath =
      'M290.048 294.592c0-13.632-4.16-24.64-12.48-33.024-8.32-8.384-19.328-12.544-33.024-12.48-14.336 0-27.008 4.224-38.016 12.736C195.584 270.336 190.08 281.216 190.08 294.592c0 12.992 5.504 23.744 16.512 32.256C217.6 335.36 230.272 339.584 244.608 339.584c13.632 0 24.64-4.096 33.024-12.224C285.952 319.232 290.112 308.288 290.048 294.592L290.048 294.592 290.048 294.592zM661.568 548.032c0-9.344-4.224-17.664-12.736-25.024-8.512-7.36-19.392-11.008-32.768-11.008-9.024 0-17.28 3.776-24.768 11.264C583.808 530.816 580.032 539.072 580.032 548.032c0 9.344 3.776 17.792 11.264 25.28 7.488 7.488 15.744 11.264 24.768 11.264 13.312 0 24.256-3.648 32.768-11.008C657.344 566.272 661.568 557.76 661.568 548.032L661.568 548.032 661.568 548.032zM543.552 294.592c0-13.632-4.096-24.64-12.224-33.024C523.2 253.184 512.256 249.024 498.56 249.088c-14.336 0-27.008 4.224-38.016 12.736C449.536 270.336 444.032 281.216 444.032 294.592c0 12.992 5.504 23.744 16.512 32.256C471.552 335.36 484.224 339.584 498.56 339.584c13.632 0 24.576-4.096 32.768-12.224S543.616 308.288 543.552 294.592L543.552 294.592 543.552 294.592zM860.992 548.032c0-9.344-4.352-17.664-12.992-25.024-8.64-7.36-19.52-11.008-32.512-11.008-9.024 0-17.28 3.776-24.768 11.264-7.488 7.488-11.264 15.744-11.264 24.768 0 9.344 3.776 17.792 11.264 25.28 7.488 7.488 15.744 11.264 24.768 11.264 12.992 0 23.872-3.648 32.512-11.008C856.704 566.272 860.992 557.76 860.992 548.032L860.992 548.032 860.992 548.032zM728.064 349.568c-10.304-1.344-22.016-1.984-35.008-1.984-56.32 0-108.16 12.864-155.52 38.528-47.36 25.664-84.608 60.416-111.744 104.256C398.656 534.144 385.088 582.08 385.024 634.048c0 25.984 3.84 51.328 11.52 75.968-11.648 0.96-22.976 1.472-33.984 1.472-8.64 0-17.024-0.256-25.024-0.768-8-0.512-17.216-1.6-27.52-3.264-10.304-1.664-17.728-2.816-22.272-3.52-4.544-0.704-13.632-2.432-27.264-5.248-13.632-2.816-22.016-4.544-25.024-5.248l-126.528 63.488 36.032-108.992C48.32 580.288 0 498.624 0 403.008c0-56.32 16.256-108.16 48.768-155.52 32.512-47.36 76.48-84.608 131.968-111.744 55.488-27.136 116.032-40.704 181.76-40.768C421.12 94.976 476.544 105.984 528.704 128c52.16 22.016 95.808 52.416 131.008 91.264 35.136 38.848 57.92 82.24 68.224 130.24L728.064 349.568 728.064 349.568zM1024 630.016c0 38.976-11.392 76.224-34.24 111.744-22.848 35.52-53.76 67.776-92.736 96.768l27.52 90.496-99.52-54.528c-49.984 12.352-86.336 18.496-108.992 18.496-56.32 0-108.16-11.776-155.52-35.264-47.36-23.488-84.608-55.424-111.744-95.744s-40.704-84.288-40.768-131.968C408.064 582.4 421.632 538.368 448.832 498.112c27.2-40.32 64.448-72.256 111.744-95.744 47.296-23.488 99.072-35.264 155.52-35.264 53.696 0 104.128 11.776 151.488 35.264 47.296 23.488 85.248 55.488 113.728 96C1009.728 538.816 1024 582.72 1024 630.08L1024 630.016 1024 630.016z';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Support me'.tr,
                style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge?.color),
              ),
              centerTitle: false,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListItem(
                title: 'Star Github',
                subtitle: 'https://github.com/xuelongqy/flutter_easy_refresh',
                icon: Icons.star,
                onTap: () {
                  launchUrl(
                    Uri.parse(
                      'https://github.com/xuelongqy/flutter_easy_refresh',
                    ),
                  );
                },
              ),
              ListItem(
                title: 'Alipay'.tr,
                subtitle: 'Alipay donation'.tr,
                iconPaths: const [_alipayIconPath],
                onTap: () {
                  if (!GetPlatform.isWeb && GetPlatform.isAndroid) {
                    const MethodChannel(_alipayChannel)
                        .invokeMethod(_alipayDonation);
                  } else {
                    Get.dialog(Dialog(
                      child: Image.asset('assets/image/pay_alipay.jpg'),
                    ));
                  }
                },
              ),
              ListItem(
                title: 'Wechat'.tr,
                subtitle: 'Wechat donation'.tr,
                iconPaths: const [_wechatIconPath],
                onTap: () {
                  Get.dialog(Dialog(
                    child: Image.asset('assets/image/pay_wechat.jpg'),
                  ));
                },
              ),
              ListItem(
                title: 'Cryptocurrency'.tr,
                subtitle: 'Cryptocurrency donation'.tr,
                icon: Icons.currency_bitcoin,
                onTap: () => Get.to(() => const CryptocurrencyPage()),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
