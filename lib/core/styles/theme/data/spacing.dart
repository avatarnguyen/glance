import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:glance/core/utils/named.dart';

class AppSpacingData extends Equatable {
  const AppSpacingData({
    required this.small,
    required this.semiSmall,
    required this.regular,
    required this.semiBig,
    required this.big,
    required this.large,
  });

  factory AppSpacingData.regular() => const AppSpacingData(
        small: 4,
        semiSmall: 8,
        regular: 12,
        semiBig: 24,
        big: 32,
        large: 40,
      );

  final double small;
  final double semiSmall;
  final double regular;
  final double semiBig;
  final double big;
  final double large;

  AppEdgeInsetsSpacingData asInsets() => AppEdgeInsetsSpacingData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        semiSmall.named('semiSmall'),
        regular.named('regular'),
        semiBig.named('semiBig'),
        big.named('big'),
        large.named('large'),
      ];
}

class AppEdgeInsetsSpacingData extends Equatable {
  const AppEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get small => EdgeInsets.all(_spacing.small);
  EdgeInsets get semiSmall => EdgeInsets.all(_spacing.semiSmall);
  EdgeInsets get regular => EdgeInsets.all(_spacing.regular);
  EdgeInsets get semiBig => EdgeInsets.all(_spacing.semiBig);
  EdgeInsets get big => EdgeInsets.all(_spacing.big);
  EdgeInsets get large => EdgeInsets.all(_spacing.large);

  final AppSpacingData _spacing;

  @override
  List<Object?> get props => [_spacing];
}
