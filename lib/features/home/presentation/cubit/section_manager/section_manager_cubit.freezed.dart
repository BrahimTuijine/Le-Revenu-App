// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionManagerState implements DiagnosticableTreeMixin {

 NewsCategory? get selectedRubrique; List<Article> get visibleArticles;
/// Create a copy of SectionManagerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionManagerStateCopyWith<SectionManagerState> get copyWith => _$SectionManagerStateCopyWithImpl<SectionManagerState>(this as SectionManagerState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SectionManagerState'))
    ..add(DiagnosticsProperty('selectedRubrique', selectedRubrique))..add(DiagnosticsProperty('visibleArticles', visibleArticles));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionManagerState&&(identical(other.selectedRubrique, selectedRubrique) || other.selectedRubrique == selectedRubrique)&&const DeepCollectionEquality().equals(other.visibleArticles, visibleArticles));
}


@override
int get hashCode => Object.hash(runtimeType,selectedRubrique,const DeepCollectionEquality().hash(visibleArticles));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SectionManagerState(selectedRubrique: $selectedRubrique, visibleArticles: $visibleArticles)';
}


}

/// @nodoc
abstract mixin class $SectionManagerStateCopyWith<$Res>  {
  factory $SectionManagerStateCopyWith(SectionManagerState value, $Res Function(SectionManagerState) _then) = _$SectionManagerStateCopyWithImpl;
@useResult
$Res call({
 NewsCategory? selectedRubrique, List<Article> visibleArticles
});




}
/// @nodoc
class _$SectionManagerStateCopyWithImpl<$Res>
    implements $SectionManagerStateCopyWith<$Res> {
  _$SectionManagerStateCopyWithImpl(this._self, this._then);

  final SectionManagerState _self;
  final $Res Function(SectionManagerState) _then;

/// Create a copy of SectionManagerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedRubrique = freezed,Object? visibleArticles = null,}) {
  return _then(_self.copyWith(
selectedRubrique: freezed == selectedRubrique ? _self.selectedRubrique : selectedRubrique // ignore: cast_nullable_to_non_nullable
as NewsCategory?,visibleArticles: null == visibleArticles ? _self.visibleArticles : visibleArticles // ignore: cast_nullable_to_non_nullable
as List<Article>,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionManagerState].
extension SectionManagerStatePatterns on SectionManagerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Data value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Data value)  data,}){
final _that = this;
switch (_that) {
case _Data():
return data(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Data value)?  data,}){
final _that = this;
switch (_that) {
case _Data() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NewsCategory? selectedRubrique,  List<Article> visibleArticles)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when data != null:
return data(_that.selectedRubrique,_that.visibleArticles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NewsCategory? selectedRubrique,  List<Article> visibleArticles)  data,}) {final _that = this;
switch (_that) {
case _Data():
return data(_that.selectedRubrique,_that.visibleArticles);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NewsCategory? selectedRubrique,  List<Article> visibleArticles)?  data,}) {final _that = this;
switch (_that) {
case _Data() when data != null:
return data(_that.selectedRubrique,_that.visibleArticles);case _:
  return null;

}
}

}

/// @nodoc


class _Data with DiagnosticableTreeMixin implements SectionManagerState {
  const _Data({required this.selectedRubrique, required final  List<Article> visibleArticles}): _visibleArticles = visibleArticles;
  

@override final  NewsCategory? selectedRubrique;
 final  List<Article> _visibleArticles;
@override List<Article> get visibleArticles {
  if (_visibleArticles is EqualUnmodifiableListView) return _visibleArticles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visibleArticles);
}


/// Create a copy of SectionManagerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SectionManagerState.data'))
    ..add(DiagnosticsProperty('selectedRubrique', selectedRubrique))..add(DiagnosticsProperty('visibleArticles', visibleArticles));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.selectedRubrique, selectedRubrique) || other.selectedRubrique == selectedRubrique)&&const DeepCollectionEquality().equals(other._visibleArticles, _visibleArticles));
}


@override
int get hashCode => Object.hash(runtimeType,selectedRubrique,const DeepCollectionEquality().hash(_visibleArticles));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SectionManagerState.data(selectedRubrique: $selectedRubrique, visibleArticles: $visibleArticles)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $SectionManagerStateCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 NewsCategory? selectedRubrique, List<Article> visibleArticles
});




}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of SectionManagerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedRubrique = freezed,Object? visibleArticles = null,}) {
  return _then(_Data(
selectedRubrique: freezed == selectedRubrique ? _self.selectedRubrique : selectedRubrique // ignore: cast_nullable_to_non_nullable
as NewsCategory?,visibleArticles: null == visibleArticles ? _self._visibleArticles : visibleArticles // ignore: cast_nullable_to_non_nullable
as List<Article>,
  ));
}


}

// dart format on
