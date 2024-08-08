import 'package:app_theme/app_theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:utilities/utilities.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class OfferHeader extends StatelessWidget {
  final RunnerTaskCounterOffer counterOffer;

  const OfferHeader({
    super.key,
    required this.counterOffer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          FlutterI18n.plural(
            context,
            'time.hour',
            counterOffer.availableTime.inHours,
          ),
          style: AppTextTheme.manrope14Regular.copyWith(
            color: AppTextTheme.hintColor,
          ),
        ),
        const SizedBox(width: 6),
        if (counterOffer.fee != null)
          Text(
            <String>[
              CurrencyUtility.dollarRoundFormat.format(counterOffer.fee),
              FlutterI18n.translate(context, 'general.counterOffer'),
            ].join(' '),
            style: AppTextTheme.manrope14Regular.copyWith(
              color: AppTextTheme.secondaryColor.withOpacity(0.67),
            ),
          )
        else
          Text(
            FlutterI18n.translate(context, 'general.counterOffer'),
            style: AppTextTheme.manrope14Regular
                .copyWith(color: AppTextTheme.hintColor),
          ),
      ],
    );
  }
}
