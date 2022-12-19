/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/color.xml
  String get color => 'assets/color/color.xml';

  /// List of all assets
  List<String> get values => [color];
}

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/ic-turkey.svg
  SvgGenImage get icTurkey => const SvgGenImage('assets/icon/ic-turkey.svg');

  /// List of all assets
  List<SvgGenImage> get values => [icTurkey];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/bg-image.png
  AssetGenImage get bgImage => const AssetGenImage('assets/image/bg-image.png');

  /// File path: assets/image/logo-image.png
  AssetGenImage get logoImage =>
      const AssetGenImage('assets/image/logo-image.png');

  /// List of all assets
  List<AssetGenImage> get values => [bgImage, logoImage];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/bg-shadow-bottom.svg
  SvgGenImage get bgShadowBottom =>
      const SvgGenImage('assets/svg/bg-shadow-bottom.svg');

  /// File path: assets/svg/bg-shadow.svg
  SvgGenImage get bgShadow => const SvgGenImage('assets/svg/bg-shadow.svg');

  /// File path: assets/svg/ic-turkey.svg
  SvgGenImage get icTurkey => const SvgGenImage('assets/svg/ic-turkey.svg');

  /// List of all assets
  List<SvgGenImage> get values => [bgShadowBottom, bgShadow, icTurkey];
}

class Assets {
  Assets._();

  static const $AssetsColorGen color = $AssetsColorGen();
  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
