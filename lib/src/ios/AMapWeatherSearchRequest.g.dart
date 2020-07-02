// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class AMapWeatherSearchRequest extends AMapSearchObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapWeatherSearchRequest';

  
  //endregion

  //region creators
  static Future<AMapWeatherSearchRequest> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::createAMapWeatherSearchRequest');
    final object = AMapWeatherSearchRequest()..refId = refId..tag__ = 'amap_search_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapWeatherSearchRequest>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::create_batchAMapWeatherSearchRequest', {'length': length});
  
    final List<AMapWeatherSearchRequest> typedResult = resultBatch.map((result) => AMapWeatherSearchRequest()..refId = result..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_city() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapWeatherSearchRequest::get_city", {'refId': refId});
  
    return __result__;
  }
  
  Future<AMapWeatherType> get_type() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapWeatherSearchRequest::get_type", {'refId': refId});
  
    return (__result__ as int).toAMapWeatherType();
  }
  
  //endregion

  //region setters
  Future<void> set_city(String city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapWeatherSearchRequest::set_city', {'refId': refId, "city": city});
  
  
  }
  
  Future<void> set_type(AMapWeatherType type) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapWeatherSearchRequest::set_type', {'refId': refId, "type": type.index});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension AMapWeatherSearchRequest_Batch on List<AMapWeatherSearchRequest> {
  //region getters
  Future<List<String>> get_city_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapWeatherSearchRequest::get_city_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<AMapWeatherType>> get_type_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapWeatherSearchRequest::get_type_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as int).toAMapWeatherType()).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_city_batch(List<String> city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapWeatherSearchRequest::set_city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "city": city[__i__]}]);
  
  
  }
  
  Future<void> set_type_batch(List<AMapWeatherType> type) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapWeatherSearchRequest::set_type_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "type": type[__i__].index}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}