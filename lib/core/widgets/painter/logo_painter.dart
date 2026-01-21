// ignore_for_file: cascade_invocations

import "dart:ui" as ui;

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class InstaLogo extends StatelessWidget {
  const InstaLogo({
    super.key,
    this.color = Colors.white,
    this.size = 14,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: RPSCustomPainter(color: color),
        size: Size(7 * size, 2 * size),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ColorProperty("color", color))
      ..add(DoubleProperty("size", size));
  }
}

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.28846153846153844).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter({required this.color});

  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.05143327, size.height * 0.003446200);
    path_0.cubicTo(
        size.width * 0.03099760,
        size.height * 0.03369533,
        size.width * 0.008474596,
        size.height * 0.1189433,
        size.width * 0.001387625,
        size.height * 0.2260190);
    path_0.cubicTo(
        size.width * -0.007592433,
        size.height * 0.3616267,
        size.width * 0.02983260,
        size.height * 0.4190300,
        size.width * 0.03293923,
        size.height * 0.4002967);
    path_0.cubicTo(
        size.width * 0.03648269,
        size.height * 0.3781233,
        size.width * 0.02619202,
        size.height * 0.3705633,
        size.width * 0.02405625,
        size.height * 0.3002673);
    path_0.cubicTo(
        size.width * 0.02128942,
        size.height * 0.2093477,
        size.width * 0.03332750,
        size.height * 0.1077720,
        size.width * 0.04842375,
        size.height * 0.06325733);
    path_0.cubicTo(
        size.width * 0.05123913,
        size.height * 0.05500733,
        size.width * 0.05109346,
        size.height * 0.06652267,
        size.width * 0.05109346,
        size.height * 0.08783467);
    path_0.cubicTo(
        size.width * 0.05109346,
        size.height * 0.1259900,
        size.width * 0.05051096,
        size.height * 0.4681867,
        size.width * 0.05051096,
        size.height * 0.5395100);
    path_0.cubicTo(
        size.width * 0.05051096,
        size.height * 0.6361033,
        size.width * 0.04939452,
        size.height * 0.6666967,
        size.width * 0.04735587,
        size.height * 0.6967733);
    path_0.cubicTo(
        size.width * 0.04526856,
        size.height * 0.7273667,
        size.width * 0.04196779,
        size.height * 0.7479900,
        size.width * 0.04449192,
        size.height * 0.7558967);
    path_0.cubicTo(
        size.width * 0.04730731,
        size.height * 0.7648333,
        size.width * 0.05929692,
        size.height * 0.7436933,
        size.width * 0.06618971,
        size.height * 0.7094933);
    path_0.cubicTo(
        size.width * 0.07449019,
        size.height * 0.6685867,
        size.width * 0.07740260,
        size.height * 0.6194300,
        size.width * 0.07793663,
        size.height * 0.5661500);
    path_0.cubicTo(
        size.width * 0.07856760,
        size.height * 0.5017000,
        size.width * 0.07851913,
        size.height * 0.3997800,
        size.width * 0.07856760,
        size.height * 0.3415167);
    path_0.cubicTo(
        size.width * 0.07856760,
        size.height * 0.2880643,
        size.width * 0.07881029,
        size.height * 0.1318337,
        size.width * 0.07832490,
        size.height * 0.03782033);
    path_0.cubicTo(
        size.width * 0.07813077,
        size.height * 0.01496153,
        size.width * 0.06002500,
        size.height * -0.009100367,
        size.width * 0.05143327,
        size.height * 0.003446200);
    path_0.close();
    path_0.moveTo(size.width * 0.9954038, size.height * 0.5109800);
    path_0.cubicTo(
        size.width * 0.9924423,
        size.height * 0.5109800,
        size.width * 0.9910865,
        size.height * 0.5218100,
        size.width * 0.9899712,
        size.height * 0.5398567);
    path_0.cubicTo(
        size.width * 0.9860865,
        size.height * 0.6029333,
        size.width * 0.9820096,
        size.height * 0.6171967,
        size.width * 0.9767212,
        size.height * 0.6171967);
    path_0.cubicTo(
        size.width * 0.9708462,
        size.height * 0.6171967,
        size.width * 0.9655577,
        size.height * 0.5859167,
        size.width * 0.9641923,
        size.height * 0.5233567);
    path_0.cubicTo(
        size.width * 0.9631250,
        size.height * 0.4742000,
        size.width * 0.9632692,
        size.height * 0.3836233,
        size.width * 0.9646346,
        size.height * 0.2935643);
    path_0.cubicTo(
        size.width * 0.9649231,
        size.height * 0.2750023,
        size.width * 0.9634712,
        size.height * 0.2567840,
        size.width * 0.9493913,
        size.height * 0.2387373);
    path_0.cubicTo(
        size.width * 0.9433231,
        size.height * 0.2310033,
        size.width * 0.9344885,
        size.height * 0.2194880,
        size.width * 0.9301202,
        size.height * 0.2569557);
    path_0.cubicTo(
        size.width * 0.9177423,
        size.height * 0.3623133,
        size.width * 0.9128885,
        size.height * 0.4460133,
        size.width * 0.9117231,
        size.height * 0.4800433);
    path_0.cubicTo(
        size.width * 0.9116750,
        size.height * 0.4817633,
        size.width * 0.9110433,
        size.height * 0.4821067,
        size.width * 0.9109462,
        size.height * 0.4781533);
    path_0.cubicTo(
        size.width * 0.9102183,
        size.height * 0.4508267,
        size.width * 0.9086163,
        size.height * 0.4013267,
        size.width * 0.9083740,
        size.height * 0.2973453);
    path_0.cubicTo(
        size.width * 0.9083250,
        size.height * 0.2770647,
        size.width * 0.9071115,
        size.height * 0.2597057,
        size.width * 0.9007529,
        size.height * 0.2456123);
    path_0.cubicTo(
        size.width * 0.8966269,
        size.height * 0.2365030,
        size.width * 0.8841038,
        size.height * 0.2201753,
        size.width * 0.8795894,
        size.height * 0.2395967);
    path_0.cubicTo(
        size.width * 0.8757058,
        size.height * 0.2554090,
        size.width * 0.8711433,
        size.height * 0.2978610,
        size.width * 0.8664346,
        size.height * 0.3482200);
    path_0.cubicTo(
        size.width * 0.8626000,
        size.height * 0.3891233,
        size.width * 0.8599788,
        size.height * 0.4167967,
        size.width * 0.8599788,
        size.height * 0.4167967);
    path_0.cubicTo(
        size.width * 0.8599788,
        size.height * 0.4167967,
        size.width * 0.8600269,
        size.height * 0.3062827,
        size.width * 0.8600760,
        size.height * 0.2645180);
    path_0.cubicTo(
        size.width * 0.8600760,
        size.height * 0.2487060,
        size.width * 0.8570173,
        size.height * 0.2435500,
        size.width * 0.8560952,
        size.height * 0.2425187);
    path_0.cubicTo(
        size.width * 0.8519212,
        size.height * 0.2382220,
        size.width * 0.8436692,
        size.height * 0.2311750,
        size.width * 0.8401740,
        size.height * 0.2311750);
    path_0.cubicTo(
        size.width * 0.8358538,
        size.height * 0.2311750,
        size.width * 0.8348346,
        size.height * 0.2395967,
        size.width * 0.8348346,
        size.height * 0.2519717);
    path_0.cubicTo(
        size.width * 0.8348346,
        size.height * 0.2535183,
        size.width * 0.8341548,
        size.height * 0.3973733,
        size.width * 0.8341548,
        size.height * 0.4979200);
    path_0.lineTo(size.width * 0.8341548, size.height * 0.5121833);
    path_0.cubicTo(
        size.width * 0.8317760,
        size.height * 0.5584167,
        size.width * 0.8240587,
        size.height * 0.6211500,
        size.width * 0.8156606,
        size.height * 0.6211500);
    path_0.cubicTo(
        size.width * 0.8072144,
        size.height * 0.6211500,
        size.width * 0.8032827,
        size.height * 0.5950267,
        size.width * 0.8032827,
        size.height * 0.4750600);
    path_0.cubicTo(
        size.width * 0.8032827,
        size.height * 0.4051100,
        size.width * 0.8038654,
        size.height * 0.3746867,
        size.width * 0.8041567,
        size.height * 0.3241573);
    path_0.cubicTo(
        size.width * 0.8043019,
        size.height * 0.2951110,
        size.width * 0.8046423,
        size.height * 0.2725960,
        size.width * 0.8046423,
        size.height * 0.2676117);
    path_0.cubicTo(
        size.width * 0.8045933,
        size.height * 0.2519717,
        size.width * 0.7969240,
        size.height * 0.2442373,
        size.width * 0.7933808,
        size.height * 0.2413157);
    path_0.cubicTo(
        size.width * 0.7897885,
        size.height * 0.2383937,
        size.width * 0.7866817,
        size.height * 0.2371907,
        size.width * 0.7842548,
        size.height * 0.2377063);
    path_0.cubicTo(
        size.width * 0.7808087,
        size.height * 0.2383937,
        size.width * 0.7783817,
        size.height * 0.2462997,
        size.width * 0.7783817,
        size.height * 0.2572997);
    path_0.cubicTo(
        size.width * 0.7783817,
        size.height * 0.2631430,
        size.width * 0.7783817,
        size.height * 0.2743147,
        size.width * 0.7783817,
        size.height * 0.2743147);
    path_0.cubicTo(
        size.width * 0.7739644,
        size.height * 0.2499090,
        size.width * 0.7668769,
        size.height * 0.2328940,
        size.width * 0.7621202,
        size.height * 0.2279097);
    path_0.cubicTo(
        size.width * 0.7494029,
        size.height * 0.2146757,
        size.width * 0.7361019,
        size.height * 0.2263627,
        size.width * 0.7260548,
        size.height * 0.2758617);
    path_0.cubicTo(
        size.width * 0.7180933,
        size.height * 0.3150480,
        size.width * 0.7132885,
        size.height * 0.3595633,
        size.width * 0.7113952,
        size.height * 0.4235000);
    path_0.cubicTo(
        size.width * 0.7099875,
        size.height * 0.4702467,
        size.width * 0.7104731,
        size.height * 0.5176833,
        size.width * 0.7129000,
        size.height * 0.5577300);
    path_0.cubicTo(
        size.width * 0.7099385,
        size.height * 0.6029333,
        size.width * 0.7044048,
        size.height * 0.6214933,
        size.width * 0.6983856,
        size.height * 0.6214933);
    path_0.cubicTo(
        size.width * 0.6896490,
        size.height * 0.6214933,
        size.width * 0.6832894,
        size.height * 0.5711367,
        size.width * 0.6840183,
        size.height * 0.4839967);
    path_0.cubicTo(
        size.width * 0.6845029,
        size.height * 0.4267633,
        size.width * 0.6877558,
        size.height * 0.3865467,
        size.width * 0.6912990,
        size.height * 0.3282823);
    path_0.cubicTo(
        size.width * 0.6928038,
        size.height * 0.3035327,
        size.width * 0.6915904,
        size.height * 0.2904707,
        size.width * 0.6884837,
        size.height * 0.2780960);
    path_0.cubicTo(
        size.width * 0.6856683,
        size.height * 0.2667523,
        size.width * 0.6796010,
        size.height * 0.2609087,
        size.width * 0.6709115,
        size.height * 0.2679557);
    path_0.cubicTo(
        size.width * 0.6647471,
        size.height * 0.2731117,
        size.width * 0.6558644,
        size.height * 0.2786117,
        size.width * 0.6478067,
        size.height * 0.2827363);
    path_0.cubicTo(
        size.width * 0.6478067,
        size.height * 0.2827363,
        size.width * 0.6482923,
        size.height * 0.2758617,
        size.width * 0.6486798,
        size.height * 0.2638307);
    path_0.cubicTo(
        size.width * 0.6507673,
        size.height * 0.2004103,
        size.width * 0.6312058,
        size.height * 0.2055663,
        size.width * 0.6249433,
        size.height * 0.2258470);
    path_0.cubicTo(
        size.width * 0.6212058,
        size.height * 0.2380500,
        size.width * 0.6186817,
        size.height * 0.2523153,
        size.width * 0.6177115,
        size.height * 0.2779240);
    path_0.cubicTo(
        size.width * 0.6162067,
        size.height * 0.3186573,
        size.width * 0.6256231,
        size.height * 0.3379067,
        size.width * 0.6256231,
        size.height * 0.3379067);
    path_0.cubicTo(
        size.width * 0.6225163,
        size.height * 0.3877500,
        size.width * 0.6149442,
        size.height * 0.4528900,
        size.width * 0.6071288,
        size.height * 0.4999800);
    path_0.cubicTo(
        size.width * 0.6029548,
        size.height * 0.5252467,
        size.width * 0.5997029,
        size.height * 0.5439800,
        size.width * 0.5955769,
        size.height * 0.5637467);
    path_0.cubicTo(
        size.width * 0.5955769,
        size.height * 0.5563533,
        size.width * 0.5955769,
        size.height * 0.5489633,
        size.width * 0.5955279,
        size.height * 0.5415733);
    path_0.cubicTo(
        size.width * 0.5954308,
        size.height * 0.4367333,
        size.width * 0.5958192,
        size.height * 0.3542333,
        size.width * 0.5960135,
        size.height * 0.3245010);
    path_0.cubicTo(
        size.width * 0.5961587,
        size.height * 0.2954550,
        size.width * 0.5964990,
        size.height * 0.2736273,
        size.width * 0.5964990,
        size.height * 0.2684710);
    path_0.cubicTo(
        size.width * 0.5964500,
        size.height * 0.2571277,
        size.width * 0.5945567,
        size.height * 0.2528310,
        size.width * 0.5906250,
        size.height * 0.2473310);
    path_0.cubicTo(
        size.width * 0.5871308,
        size.height * 0.2425187,
        size.width * 0.5830529,
        size.height * 0.2392530,
        size.width * 0.5787817,
        size.height * 0.2380500);
    path_0.cubicTo(
        size.width * 0.5734423,
        size.height * 0.2365030,
        size.width * 0.5701894,
        size.height * 0.2466437,
        size.width * 0.5702865,
        size.height * 0.2585027);
    path_0.cubicTo(
        size.width * 0.5702865,
        size.height * 0.2607370,
        size.width * 0.5702865,
        size.height * 0.2744867,
        size.width * 0.5702865,
        size.height * 0.2744867);
    path_0.cubicTo(
        size.width * 0.5658692,
        size.height * 0.2500810,
        size.width * 0.5587827,
        size.height * 0.2330657,
        size.width * 0.5540260,
        size.height * 0.2280813);
    path_0.cubicTo(
        size.width * 0.5413077,
        size.height * 0.2148473,
        size.width * 0.5280077,
        size.height * 0.2265347,
        size.width * 0.5179596,
        size.height * 0.2760333);
    path_0.cubicTo(
        size.width * 0.5099990,
        size.height * 0.3152200,
        size.width * 0.5048048,
        size.height * 0.3703900,
        size.width * 0.5033000,
        size.height * 0.4231533);
    path_0.cubicTo(
        size.width * 0.5019413,
        size.height * 0.4723100,
        size.width * 0.5021837,
        size.height * 0.5140733,
        size.width * 0.5040769,
        size.height * 0.5493067);
    path_0.cubicTo(
        size.width * 0.5020385,
        size.height * 0.5845433,
        size.width * 0.4962135,
        size.height * 0.6214933,
        size.width * 0.4896606,
        size.height * 0.6214933);
    path_0.cubicTo(
        size.width * 0.4812625,
        size.height * 0.6214933,
        size.width * 0.4764567,
        size.height * 0.5953700,
        size.width * 0.4764567,
        size.height * 0.4754033);
    path_0.cubicTo(
        size.width * 0.4764567,
        size.height * 0.4054533,
        size.width * 0.4770394,
        size.height * 0.3750300,
        size.width * 0.4773308,
        size.height * 0.3245010);
    path_0.cubicTo(
        size.width * 0.4775250,
        size.height * 0.2954550,
        size.width * 0.4778163,
        size.height * 0.2729397,
        size.width * 0.4778163,
        size.height * 0.2679557);
    path_0.cubicTo(
        size.width * 0.4777683,
        size.height * 0.2523153,
        size.width * 0.4700981,
        size.height * 0.2445810,
        size.width * 0.4665548,
        size.height * 0.2416593);
    path_0.cubicTo(
        size.width * 0.4628173,
        size.height * 0.2385657,
        size.width * 0.4596135,
        size.height * 0.2375343,
        size.width * 0.4571375,
        size.height * 0.2382220);
    path_0.cubicTo(
        size.width * 0.4538856,
        size.height * 0.2390813,
        size.width * 0.4516038,
        size.height * 0.2493933,
        size.width * 0.4516038,
        size.height * 0.2569557);
    path_0.lineTo(size.width * 0.4516038, size.height * 0.2746583);
    path_0.cubicTo(
        size.width * 0.4471875,
        size.height * 0.2502527,
        size.width * 0.4400519,
        size.height * 0.2332377,
        size.width * 0.4353433,
        size.height * 0.2282533);
    path_0.cubicTo(
        size.width * 0.4226250,
        size.height * 0.2150193,
        size.width * 0.4094221,
        size.height * 0.2270503,
        size.width * 0.3993260,
        size.height * 0.2762053);
    path_0.cubicTo(
        size.width * 0.3927240,
        size.height * 0.3083453,
        size.width * 0.3873846,
        size.height * 0.3439233,
        size.width * 0.3846663,
        size.height * 0.4226400);
    path_0.cubicTo(
        size.width * 0.3838413,
        size.height * 0.4453267,
        size.width * 0.3835010,
        size.height * 0.4666367,
        size.width * 0.3835500,
        size.height * 0.4865767);
    path_0.cubicTo(
        size.width * 0.3809288,
        size.height * 0.5432933,
        size.width * 0.3693279,
        size.height * 0.6084333,
        size.width * 0.3598615,
        size.height * 0.6084333);
    path_0.cubicTo(
        size.width * 0.3543279,
        size.height * 0.6084333,
        size.width * 0.3490375,
        size.height * 0.5704467,
        size.width * 0.3490375,
        size.height * 0.4896700);
    path_0.cubicTo(
        size.width * 0.3490375,
        size.height * 0.3819067,
        size.width * 0.3509308,
        size.height * 0.2285970,
        size.width * 0.3512702,
        size.height * 0.2138163);
    path_0.cubicTo(
        size.width * 0.3512702,
        size.height * 0.2138163,
        size.width * 0.3632596,
        size.height * 0.2131287,
        size.width * 0.3655894,
        size.height * 0.2129570);
    path_0.cubicTo(
        size.width * 0.3715606,
        size.height * 0.2127850,
        size.width * 0.3769971,
        size.height * 0.2133007,
        size.width * 0.3849577,
        size.height * 0.2117537);
    path_0.cubicTo(
        size.width * 0.3889375,
        size.height * 0.2110663,
        size.width * 0.3927731,
        size.height * 0.1605363,
        size.width * 0.3886952,
        size.height * 0.1543490);
    path_0.cubicTo(
        size.width * 0.3868019,
        size.height * 0.1514270,
        size.width * 0.3735990,
        size.height * 0.1490210,
        size.width * 0.3683567,
        size.height * 0.1486770);
    path_0.cubicTo(
        size.width * 0.3641817,
        size.height * 0.1478177,
        size.width * 0.3519010,
        size.height * 0.1445523,
        size.width * 0.3519010,
        size.height * 0.1445523);
    path_0.cubicTo(
        size.width * 0.3519010,
        size.height * 0.1445523,
        size.width * 0.3530173,
        size.height * 0.04280467,
        size.width * 0.3532606,
        size.height * 0.03197677);
    path_0.cubicTo(
        size.width * 0.3534548,
        size.height * 0.02303947,
        size.width * 0.3501538,
        size.height * 0.01839897,
        size.width * 0.3483096,
        size.height * 0.01564903);
    path_0.cubicTo(
        size.width * 0.3436981,
        size.height * 0.008774200,
        size.width * 0.3396202,
        size.height * 0.005508633,
        size.width * 0.3347663,
        size.height * 0.002071230);
    path_0.cubicTo(
        size.width * 0.3280192,
        size.height * -0.002913027,
        size.width * 0.3250096,
        size.height * 0.001899360,
        size.width * 0.3243788,
        size.height * 0.02200827);
    path_0.cubicTo(
        size.width * 0.3234567,
        size.height * 0.05225767,
        size.width * 0.3230192,
        size.height * 0.1412867,
        size.width * 0.3230192,
        size.height * 0.1412867);
    path_0.cubicTo(
        size.width * 0.3180683,
        size.height * 0.1412867,
        size.width * 0.3012250,
        size.height * 0.1378493,
        size.width * 0.2963221,
        size.height * 0.1378493);
    path_0.cubicTo(
        size.width * 0.2917106,
        size.height * 0.1378493,
        size.width * 0.2868077,
        size.height * 0.2072850,
        size.width * 0.2931183,
        size.height * 0.2081443);
    path_0.cubicTo(
        size.width * 0.3003990,
        size.height * 0.2091757,
        size.width * 0.3131173,
        size.height * 0.2100350,
        size.width * 0.3215635,
        size.height * 0.2108943);
    path_0.cubicTo(
        size.width * 0.3215635,
        size.height * 0.2108943,
        size.width * 0.3211750,
        size.height * 0.3667800,
        size.width * 0.3211750,
        size.height * 0.4149067);
    path_0.cubicTo(
        size.width * 0.3211750,
        size.height * 0.4198900,
        size.width * 0.3211750,
        size.height * 0.4248733,
        size.width * 0.3211750,
        size.height * 0.4296867);
    path_0.cubicTo(
        size.width * 0.3165635,
        size.height * 0.5149333,
        size.width * 0.3002048,
        size.height * 0.5608233,
        size.width * 0.3002048,
        size.height * 0.5608233);
    path_0.cubicTo(
        size.width * 0.3037000,
        size.height * 0.5044500,
        size.width * 0.2965644,
        size.height * 0.4621700,
        size.width * 0.2836529,
        size.height * 0.4264200);
    path_0.cubicTo(
        size.width * 0.2788962,
        size.height * 0.4131867,
        size.width * 0.2695279,
        size.height * 0.3882667,
        size.width * 0.2589942,
        size.height * 0.3607667);
    path_0.cubicTo(
        size.width * 0.2589942,
        size.height * 0.3607667,
        size.width * 0.2650615,
        size.height * 0.3396267,
        size.width * 0.2704981,
        size.height * 0.2971737);
    path_0.cubicTo(
        size.width * 0.2743327,
        size.height * 0.2670963,
        size.width * 0.2744788,
        size.height * 0.2325500,
        size.width * 0.2651106,
        size.height * 0.2249877);
    path_0.cubicTo(
        size.width * 0.2496260,
        size.height * 0.2124413,
        size.width * 0.2368106,
        size.height * 0.2524870,
        size.width * 0.2330250,
        size.height * 0.2954550);
    path_0.cubicTo(
        size.width * 0.2300635,
        size.height * 0.3286260,
        size.width * 0.2316654,
        size.height * 0.3532033,
        size.width * 0.2374423,
        size.height * 0.3788133);
    path_0.cubicTo(
        size.width * 0.2378298,
        size.height * 0.3807033,
        size.width * 0.2383154,
        size.height * 0.3825933,
        size.width * 0.2388010,
        size.height * 0.3844833);
    path_0.cubicTo(
        size.width * 0.2353058,
        size.height * 0.4083733,
        size.width * 0.2305010,
        size.height * 0.4403433,
        size.width * 0.2264231,
        size.height * 0.4650900);
    path_0.cubicTo(
        size.width * 0.2151135,
        size.height * 0.5340133,
        size.width * 0.2065702,
        size.height * 0.5884933,
        size.width * 0.2001144,
        size.height * 0.5884933);
    path_0.cubicTo(
        size.width * 0.1949683,
        size.height * 0.5884933,
        size.width * 0.1950173,
        size.height * 0.5331533,
        size.width * 0.1950173,
        size.height * 0.4814200);
    path_0.cubicTo(
        size.width * 0.1950173,
        size.height * 0.4367333,
        size.width * 0.1959394,
        size.height * 0.3697033,
        size.width * 0.1967163,
        size.height * 0.3000953);
    path_0.cubicTo(
        size.width * 0.1969587,
        size.height * 0.2770647,
        size.width * 0.1937067,
        size.height * 0.2640023,
        size.width * 0.1882212,
        size.height * 0.2521433);
    path_0.cubicTo(
        size.width * 0.1849212,
        size.height * 0.2449247,
        size.width * 0.1778337,
        size.height * 0.2306597,
        size.width * 0.1737077,
        size.height * 0.2306597);
    path_0.cubicTo(
        size.width * 0.1675433,
        size.height * 0.2306597,
        size.width * 0.1498260,
        size.height * 0.2335813,
        size.width * 0.1330788,
        size.height * 0.4044200);
    path_0.cubicTo(
        size.width * 0.1309913,
        size.height * 0.4259033,
        size.width * 0.1268173,
        size.height * 0.4652633,
        size.width * 0.1268173,
        size.height * 0.4652633);
    path_0.lineTo(size.width * 0.1271567, size.height * 0.2598777);
    path_0.cubicTo(
        size.width * 0.1271567,
        size.height * 0.2550653,
        size.width * 0.1264288,
        size.height * 0.2504247,
        size.width * 0.1247788,
        size.height * 0.2471590);
    path_0.cubicTo(
        size.width * 0.1219635,
        size.height * 0.2416593,
        size.width * 0.1143904,
        size.height * 0.2306597,
        size.width * 0.1076923,
        size.height * 0.2306597);
    path_0.cubicTo(
        size.width * 0.1044885,
        size.height * 0.2306597,
        size.width * 0.1028865,
        size.height * 0.2359877,
        size.width * 0.1028865,
        size.height * 0.2464717);
    path_0.lineTo(size.width * 0.1023038, size.height * 0.5678700);
    path_0.cubicTo(
        size.width * 0.1023038,
        size.height * 0.5922767,
        size.width * 0.1024981,
        size.height * 0.6208067,
        size.width * 0.1031779,
        size.height * 0.6331800);
    path_0.cubicTo(
        size.width * 0.1038577,
        size.height * 0.6455567,
        size.width * 0.1049740,
        size.height * 0.6558667,
        size.width * 0.1063327,
        size.height * 0.6618833);
    path_0.cubicTo(
        size.width * 0.1076923,
        size.height * 0.6679000,
        size.width * 0.1092942,
        size.height * 0.6725400,
        size.width * 0.1118663,
        size.height * 0.6744300);
    path_0.cubicTo(
        size.width * 0.1142933,
        size.height * 0.6761500,
        size.width * 0.1275942,
        size.height * 0.6821633,
        size.width * 0.1282731,
        size.height * 0.6642900);
    path_0.cubicTo(
        size.width * 0.1290990,
        size.height * 0.6428067,
        size.width * 0.1291471,
        size.height * 0.6196033,
        size.width * 0.1361375,
        size.height * 0.5331533);
    path_0.cubicTo(
        size.width * 0.1470106,
        size.height * 0.3984067,
        size.width * 0.1611846,
        size.height * 0.3327510,
        size.width * 0.1678346,
        size.height * 0.3093763);
    path_0.cubicTo(
        size.width * 0.1689990,
        size.height * 0.3052517,
        size.width * 0.1703587,
        size.height * 0.3050797,
        size.width * 0.1702615,
        size.height * 0.3117827);
    path_0.cubicTo(
        size.width * 0.1699702,
        size.height * 0.3413433,
        size.width * 0.1689990,
        size.height * 0.4152500,
        size.width * 0.1683192,
        size.height * 0.4778100);
    path_0.cubicTo(
        size.width * 0.1665240,
        size.height * 0.6455567,
        size.width * 0.1751644,
        size.height * 0.6766633,
        size.width * 0.1875423,
        size.height * 0.6766633);
    path_0.cubicTo(
        size.width * 0.1970077,
        size.height * 0.6766633,
        size.width * 0.2103558,
        size.height * 0.6434933,
        size.width * 0.2246760,
        size.height * 0.5596200);
    path_0.cubicTo(
        size.width * 0.2336067,
        size.height * 0.5073733,
        size.width * 0.2422471,
        size.height * 0.4559833,
        size.width * 0.2485096,
        size.height * 0.4190300);
    path_0.cubicTo(
        size.width * 0.2528298,
        size.height * 0.4331233,
        size.width * 0.2577317,
        size.height * 0.4484200,
        size.width * 0.2625865,
        size.height * 0.4645767);
    path_0.cubicTo(
        size.width * 0.2738962,
        size.height * 0.5023867,
        size.width * 0.2775856,
        size.height * 0.5383100,
        size.width * 0.2751577,
        size.height * 0.5723400);
    path_0.cubicTo(
        size.width * 0.2732654,
        size.height * 0.5984633,
        size.width * 0.2661779,
        size.height * 0.6252767,
        size.width * 0.2535577,
        size.height * 0.5991500);
    path_0.cubicTo(
        size.width * 0.2498683,
        size.height * 0.5915900,
        size.width * 0.2483154,
        size.height * 0.5857433,
        size.width * 0.2446260,
        size.height * 0.5769800);
    path_0.cubicTo(
        size.width * 0.2426356,
        size.height * 0.5723400,
        size.width * 0.2395779,
        size.height * 0.5709633,
        size.width * 0.2377817,
        size.height * 0.5759467);
    path_0.cubicTo(
        size.width * 0.2330731,
        size.height * 0.5884933,
        size.width * 0.2303548,
        size.height * 0.6044800,
        size.width * 0.2288019,
        size.height * 0.6242433);
    path_0.cubicTo(
        size.width * 0.2272971,
        size.height * 0.6434933,
        size.width * 0.2327817,
        size.height * 0.6536333,
        size.width * 0.2384125,
        size.height * 0.6625700);
    path_0.cubicTo(
        size.width * 0.2433154,
        size.height * 0.6703067,
        size.width * 0.2538000,
        size.height * 0.6771800,
        size.width * 0.2604990,
        size.height * 0.6780400);
    path_0.cubicTo(
        size.width * 0.2865654,
        size.height * 0.6811333,
        size.width * 0.3074375,
        size.height * 0.6336967,
        size.width * 0.3220000,
        size.height * 0.5113233);
    path_0.cubicTo(
        size.width * 0.3246212,
        size.height * 0.6170267,
        size.width * 0.3356885,
        size.height * 0.6768367,
        size.width * 0.3549106,
        size.height * 0.6768367);
    path_0.cubicTo(
        size.width * 0.3677740,
        size.height * 0.6768367,
        size.width * 0.3806856,
        size.height * 0.6182300,
        size.width * 0.3863163,
        size.height * 0.5606500);
    path_0.cubicTo(
        size.width * 0.3879183,
        size.height * 0.5841967,
        size.width * 0.3903462,
        size.height * 0.6046500,
        size.width * 0.3934038,
        size.height * 0.6218367);
    path_0.cubicTo(
        size.width * 0.4082577,
        size.height * 0.7046800,
        size.width * 0.4369933,
        size.height * 0.6868033,
        size.width * 0.4514587,
        size.height * 0.6165100);
    path_0.cubicTo(
        size.width * 0.4559240,
        size.height * 0.5948533,
        size.width * 0.4566038,
        size.height * 0.5869467,
        size.width * 0.4566038,
        size.height * 0.5869467);
    path_0.cubicTo(
        size.width * 0.4586913,
        size.height * 0.6532900,
        size.width * 0.4738846,
        size.height * 0.6764933,
        size.width * 0.4825731,
        size.height * 0.6764933);
    path_0.cubicTo(
        size.width * 0.4922817,
        size.height * 0.6764933,
        size.width * 0.5023298,
        size.height * 0.6603367,
        size.width * 0.5093683,
        size.height * 0.6044800);
    path_0.cubicTo(
        size.width * 0.5101933,
        size.height * 0.6104933,
        size.width * 0.5111154,
        size.height * 0.6163367,
        size.width * 0.5120865,
        size.height * 0.6218367);
    path_0.cubicTo(
        size.width * 0.5268913,
        size.height * 0.7046800,
        size.width * 0.5556760,
        size.height * 0.6868033,
        size.width * 0.5700923,
        size.height * 0.6165100);
    path_0.cubicTo(
        size.width * 0.5707721,
        size.height * 0.6132433,
        size.width * 0.5713548,
        size.height * 0.6103233,
        size.width * 0.5718885,
        size.height * 0.6075733);
    path_0.lineTo(size.width * 0.5723250, size.height * 0.6512267);
    path_0.cubicTo(
        size.width * 0.5723250,
        size.height * 0.6512267,
        size.width * 0.5640731,
        size.height * 0.6778667,
        size.width * 0.5590250,
        size.height * 0.6941967);
    path_0.cubicTo(
        size.width * 0.5367452,
        size.height * 0.7662100,
        size.width * 0.5198038,
        size.height * 0.8208633,
        size.width * 0.5185423,
        size.height * 0.8844567);
    path_0.cubicTo(
        size.width * 0.5169404,
        size.height * 0.9655800,
        size.width * 0.5356288,
        size.height * 0.9956567,
        size.width * 0.5497538,
        size.height * 0.9996100);
    path_0.cubicTo(
        size.width * 0.5647529,
        size.height * 1.003733,
        size.width * 0.5776163,
        size.height * 0.9746900,
        size.width * 0.5854798,
        size.height * 0.9337833);
    path_0.cubicTo(
        size.width * 0.5924212,
        size.height * 0.8978633,
        size.width * 0.5969846,
        size.height * 0.8203500,
        size.width * 0.5966442,
        size.height * 0.7440367);
    path_0.cubicTo(
        size.width * 0.5964990,
        size.height * 0.7134433,
        size.width * 0.5963048,
        size.height * 0.6746033,
        size.width * 0.5961106,
        size.height * 0.6328367);
    path_0.cubicTo(
        size.width * 0.6039260,
        size.height * 0.6008700,
        size.width * 0.6127596,
        size.height * 0.5603067,
        size.width * 0.6208663,
        size.height * 0.5130433);
    path_0.cubicTo(
        size.width * 0.6297010,
        size.height * 0.4613100,
        size.width * 0.6392144,
        size.height * 0.3920467,
        size.width * 0.6440692,
        size.height * 0.3380800);
    path_0.cubicTo(
        size.width * 0.6440692,
        size.height * 0.3380800,
        size.width * 0.6523212,
        size.height * 0.3382500,
        size.width * 0.6611067,
        size.height * 0.3363600);
    path_0.cubicTo(
        size.width * 0.6639221,
        size.height * 0.3358433,
        size.width * 0.6646990,
        size.height * 0.3377367,
        size.width * 0.6642135,
        size.height * 0.3449533);
    path_0.cubicTo(
        size.width * 0.6635827,
        size.height * 0.3537200,
        size.width * 0.6530971,
        size.height * 0.4962000,
        size.width * 0.6626596,
        size.height * 0.5910733);
    path_0.cubicTo(
        size.width * 0.6692135,
        size.height * 0.6560400,
        size.width * 0.6839692,
        size.height * 0.6770067,
        size.width * 0.6927067,
        size.height * 0.6770067);
    path_0.cubicTo(
        size.width * 0.7029490,
        size.height * 0.6770067,
        size.width * 0.7127538,
        size.height * 0.6498533,
        size.width * 0.7179962,
        size.height * 0.6092900);
    path_0.cubicTo(
        size.width * 0.7186279,
        size.height * 0.6137600,
        size.width * 0.7193067,
        size.height * 0.6180567,
        size.width * 0.7200356,
        size.height * 0.6221800);
    path_0.cubicTo(
        size.width * 0.7348404,
        size.height * 0.7050233,
        size.width * 0.7635279,
        size.height * 0.6869767,
        size.width * 0.7780904,
        size.height * 0.6168533);
    path_0.cubicTo(
        size.width * 0.7813913,
        size.height * 0.6010400,
        size.width * 0.7832356,
        size.height * 0.5872900,
        size.width * 0.7832356,
        size.height * 0.5872900);
    path_0.cubicTo(
        size.width * 0.7863423,
        size.height * 0.6560400,
        size.width * 0.8015356,
        size.height * 0.6771800,
        size.width * 0.8102240,
        size.height * 0.6771800);
    path_0.cubicTo(
        size.width * 0.8192529,
        size.height * 0.6771800,
        size.width * 0.8278442,
        size.height * 0.6641167,
        size.width * 0.8348346,
        size.height * 0.6060267);
    path_0.cubicTo(
        size.width * 0.8351260,
        size.height * 0.6316333,
        size.width * 0.8356106,
        size.height * 0.6526033,
        size.width * 0.8362904,
        size.height * 0.6591333);
    path_0.cubicTo(
        size.width * 0.8367279,
        size.height * 0.6630867,
        size.width * 0.8393000,
        size.height * 0.6682433,
        size.width * 0.8411933,
        size.height * 0.6706500);
    path_0.cubicTo(
        size.width * 0.8494942,
        size.height * 0.6814767,
        size.width * 0.8578913,
        size.height * 0.6763200,
        size.width * 0.8610462,
        size.height * 0.6740867);
    path_0.cubicTo(
        size.width * 0.8632308,
        size.height * 0.6725400,
        size.width * 0.8648808,
        size.height * 0.6663533,
        size.width * 0.8651240,
        size.height * 0.6507133);
    path_0.cubicTo(
        size.width * 0.8657067,
        size.height * 0.6092900,
        size.width * 0.8653663,
        size.height * 0.5395100,
        size.width * 0.8689106,
        size.height * 0.4877800);
    path_0.cubicTo(
        size.width * 0.8748808,
        size.height * 0.4008133,
        size.width * 0.8804625,
        size.height * 0.3671267,
        size.width * 0.8831327,
        size.height * 0.3504533);
    path_0.cubicTo(
        size.width * 0.8845885,
        size.height * 0.3411733,
        size.width * 0.8862875,
        size.height * 0.3396267,
        size.width * 0.8863365,
        size.height * 0.3494233);
    path_0.cubicTo(
        size.width * 0.8864817,
        size.height * 0.3695300,
        size.width * 0.8867731,
        size.height * 0.4281400,
        size.width * 0.8890548,
        size.height * 0.5072000);
    path_0.cubicTo(
        size.width * 0.8907538,
        size.height * 0.5652933,
        size.width * 0.8930346,
        size.height * 0.5996667,
        size.width * 0.8947827,
        size.height * 0.6104933);
    path_0.cubicTo(
        size.width * 0.8997817,
        size.height * 0.6416033,
        size.width * 0.9059471,
        size.height * 0.6429767,
        size.width * 0.9109462,
        size.height * 0.6429767);
    path_0.cubicTo(
        size.width * 0.9141500,
        size.height * 0.6429767,
        size.width * 0.9208000,
        size.height * 0.6398833,
        size.width * 0.9202183,
        size.height * 0.6201200);
    path_0.cubicTo(
        size.width * 0.9199269,
        size.height * 0.6104933,
        size.width * 0.9204606,
        size.height * 0.5510267,
        size.width * 0.9263337,
        size.height * 0.4652633);
    path_0.cubicTo(
        size.width * 0.9302173,
        size.height * 0.4094067,
        size.width * 0.9366250,
        size.height * 0.3588767,
        size.width * 0.9389548,
        size.height * 0.3404867);
    path_0.cubicTo(
        size.width * 0.9398279,
        size.height * 0.3336100,
        size.width * 0.9402163,
        size.height * 0.3391100,
        size.width * 0.9402163,
        size.height * 0.3401400);
    path_0.cubicTo(
        size.width * 0.9397317,
        size.height * 0.3786400,
        size.width * 0.9386144,
        size.height * 0.5044500,
        size.width * 0.9430808,
        size.height * 0.5733700);
    path_0.cubicTo(
        size.width * 0.9491000,
        size.height * 0.6666967,
        size.width * 0.9665769,
        size.height * 0.6770067,
        size.width * 0.9726442,
        size.height * 0.6770067);
    path_0.cubicTo(
        size.width * 0.9856058,
        size.height * 0.6770067,
        size.width * 0.9962308,
        size.height * 0.6422900,
        size.width * 0.9998269,
        size.height * 0.5506833);
    path_0.cubicTo(
        size.width * 1.000500,
        size.height * 0.5281667,
        size.width * 0.9992404,
        size.height * 0.5109800,
        size.width * 0.9954038,
        size.height * 0.5109800);
    path_0.close();
    path_0.moveTo(size.width * 0.4516038, size.height * 0.4544367);
    path_0.cubicTo(
        size.width * 0.4508760,
        size.height * 0.5029033,
        size.width * 0.4481577,
        size.height * 0.5434633,
        size.width * 0.4438865,
        size.height * 0.5728533);
    path_0.cubicTo(
        size.width * 0.4360712,
        size.height * 0.6261333,
        size.width * 0.4206837,
        size.height * 0.6429767,
        size.width * 0.4138875,
        size.height * 0.5659800);
    path_0.cubicTo(
        size.width * 0.4089856,
        size.height * 0.5104667,
        size.width * 0.4106356,
        size.height * 0.4348433,
        size.width * 0.4126740,
        size.height * 0.3939367);
    path_0.cubicTo(
        size.width * 0.4156837,
        size.height * 0.3332663,
        size.width * 0.4232567,
        size.height * 0.2902987,
        size.width * 0.4351000,
        size.height * 0.2944237);
    path_0.cubicTo(
        size.width * 0.4472837,
        size.height * 0.2987203,
        size.width * 0.4531577,
        size.height * 0.3537200,
        size.width * 0.4516038,
        size.height * 0.4544367);
    path_0.close();
    path_0.moveTo(size.width * 0.5702865, size.height * 0.4551233);
    path_0.cubicTo(
        size.width * 0.5696067,
        size.height * 0.5008400,
        size.width * 0.5662096,
        size.height * 0.5469033,
        size.width * 0.5625683,
        size.height * 0.5728533);
    path_0.cubicTo(
        size.width * 0.5549962,
        size.height * 0.6264767,
        size.width * 0.5391231,
        size.height * 0.6433200,
        size.width * 0.5325702,
        size.height * 0.5659800);
    path_0.cubicTo(
        size.width * 0.5281048,
        size.height * 0.5132167,
        size.width * 0.5291721,
        size.height * 0.4449833,
        size.width * 0.5313567,
        size.height * 0.4020133);
    path_0.cubicTo(
        size.width * 0.5342212,
        size.height * 0.3461567,
        size.width * 0.5412106,
        size.height * 0.2944237,
        size.width * 0.5537827,
        size.height * 0.2944237);
    path_0.cubicTo(
        size.width * 0.5660154,
        size.height * 0.2944237,
        size.width * 0.5720346,
        size.height * 0.3416867,
        size.width * 0.5702865,
        size.height * 0.4551233);
    path_0.close();
    path_0.moveTo(size.width * 0.5733933, size.height * 0.7674133);
    path_0.cubicTo(
        size.width * 0.5732481,
        size.height * 0.8509400,
        size.width * 0.5695096,
        size.height * 0.9239867,
        size.width * 0.5615010,
        size.height * 0.9453000);
    path_0.cubicTo(
        size.width * 0.5501423,
        size.height * 0.9753767,
        size.width * 0.5349000,
        size.height * 0.9528600,
        size.width * 0.5380558,
        size.height * 0.8920200);
    path_0.cubicTo(
        size.width * 0.5408712,
        size.height * 0.8380500,
        size.width * 0.5540250,
        size.height * 0.7830533,
        size.width * 0.5733933,
        size.height * 0.7158500);
    path_0.cubicTo(
        size.width * 0.5734423,
        size.height * 0.7156800,
        size.width * 0.5734423,
        size.height * 0.7309767,
        size.width * 0.5733933,
        size.height * 0.7674133);
    path_0.close();
    path_0.moveTo(size.width * 0.7782356, size.height * 0.4556400);
    path_0.cubicTo(
        size.width * 0.7775567,
        size.height * 0.5058233,
        size.width * 0.7744010,
        size.height * 0.5451833,
        size.width * 0.7705183,
        size.height * 0.5728533);
    path_0.cubicTo(
        size.width * 0.7629452,
        size.height * 0.6264767,
        size.width * 0.7471692,
        size.height * 0.6431500,
        size.width * 0.7405192,
        size.height * 0.5659800);
    path_0.cubicTo(
        size.width * 0.7368788,
        size.height * 0.5240433,
        size.width * 0.7367337,
        size.height * 0.4537467,
        size.width * 0.7393548,
        size.height * 0.3951400);
    path_0.cubicTo(
        size.width * 0.7420240,
        size.height * 0.3355000,
        size.width * 0.7494510,
        size.height * 0.2902987,
        size.width * 0.7617808,
        size.height * 0.2944237);
    path_0.cubicTo(
        size.width * 0.7738673,
        size.height * 0.2985487,
        size.width * 0.7795462,
        size.height * 0.3537200,
        size.width * 0.7782356,
        size.height * 0.4556400);
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
