// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationMessageModel implements DiagnosticableTreeMixin {

 String get title; String get body; String? get token; String? get imageUrl; String? get topic;
/// Create a copy of NotificationMessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationMessageModelCopyWith<NotificationMessageModel> get copyWith => _$NotificationMessageModelCopyWithImpl<NotificationMessageModel>(this as NotificationMessageModel, _$identity);

  /// Serializes this NotificationMessageModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationMessageModel'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('body', body))..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('topic', topic));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationMessageModel&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.token, token) || other.token == token)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.topic, topic) || other.topic == topic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,token,imageUrl,topic);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationMessageModel(title: $title, body: $body, token: $token, imageUrl: $imageUrl, topic: $topic)';
}


}

/// @nodoc
abstract mixin class $NotificationMessageModelCopyWith<$Res>  {
  factory $NotificationMessageModelCopyWith(NotificationMessageModel value, $Res Function(NotificationMessageModel) _then) = _$NotificationMessageModelCopyWithImpl;
@useResult
$Res call({
 String title, String body, String? token, String? imageUrl, String? topic
});




}
/// @nodoc
class _$NotificationMessageModelCopyWithImpl<$Res>
    implements $NotificationMessageModelCopyWith<$Res> {
  _$NotificationMessageModelCopyWithImpl(this._self, this._then);

  final NotificationMessageModel _self;
  final $Res Function(NotificationMessageModel) _then;

/// Create a copy of NotificationMessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? body = null,Object? token = freezed,Object? imageUrl = freezed,Object? topic = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationMessageModel].
extension NotificationMessageModelPatterns on NotificationMessageModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationMessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationMessageModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationMessageModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationMessageModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationMessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationMessageModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String body,  String? token,  String? imageUrl,  String? topic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationMessageModel() when $default != null:
return $default(_that.title,_that.body,_that.token,_that.imageUrl,_that.topic);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String body,  String? token,  String? imageUrl,  String? topic)  $default,) {final _that = this;
switch (_that) {
case _NotificationMessageModel():
return $default(_that.title,_that.body,_that.token,_that.imageUrl,_that.topic);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String body,  String? token,  String? imageUrl,  String? topic)?  $default,) {final _that = this;
switch (_that) {
case _NotificationMessageModel() when $default != null:
return $default(_that.title,_that.body,_that.token,_that.imageUrl,_that.topic);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationMessageModel with DiagnosticableTreeMixin implements NotificationMessageModel {
  const _NotificationMessageModel({required this.title, required this.body, this.token, this.imageUrl, this.topic});
  factory _NotificationMessageModel.fromJson(Map<String, dynamic> json) => _$NotificationMessageModelFromJson(json);

@override final  String title;
@override final  String body;
@override final  String? token;
@override final  String? imageUrl;
@override final  String? topic;

/// Create a copy of NotificationMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationMessageModelCopyWith<_NotificationMessageModel> get copyWith => __$NotificationMessageModelCopyWithImpl<_NotificationMessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationMessageModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationMessageModel'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('body', body))..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('topic', topic));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationMessageModel&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.token, token) || other.token == token)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.topic, topic) || other.topic == topic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,token,imageUrl,topic);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationMessageModel(title: $title, body: $body, token: $token, imageUrl: $imageUrl, topic: $topic)';
}


}

/// @nodoc
abstract mixin class _$NotificationMessageModelCopyWith<$Res> implements $NotificationMessageModelCopyWith<$Res> {
  factory _$NotificationMessageModelCopyWith(_NotificationMessageModel value, $Res Function(_NotificationMessageModel) _then) = __$NotificationMessageModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String body, String? token, String? imageUrl, String? topic
});




}
/// @nodoc
class __$NotificationMessageModelCopyWithImpl<$Res>
    implements _$NotificationMessageModelCopyWith<$Res> {
  __$NotificationMessageModelCopyWithImpl(this._self, this._then);

  final _NotificationMessageModel _self;
  final $Res Function(_NotificationMessageModel) _then;

/// Create a copy of NotificationMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,Object? token = freezed,Object? imageUrl = freezed,Object? topic = freezed,}) {
  return _then(_NotificationMessageModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
