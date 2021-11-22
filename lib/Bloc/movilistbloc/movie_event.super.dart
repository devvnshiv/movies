// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: return_of_invalid_type, constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_this, sort_unnamed_constructors_first, join_return_with_assignment, missing_return, lines_longer_than_80_chars

part of 'movie_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class MovieEvent extends Equatable {
  const MovieEvent(this._type);

  factory MovieEvent.movielistevent() = Movielistevent.create;

  factory MovieEvent.moviedetailsevent({@required dynamic params}) =
      Moviedetailsevent.create;

  final _MovieEvent _type;

  /// The [when] method is the equivalent to pattern matching.
  /// Its prototype depends on the _MovieEvent [_type]s defined.
  R when<R extends Object>(
      {@required R Function() movielistevent,
      @required R Function(Moviedetailsevent) moviedetailsevent}) {
    assert(() {
      if (movielistevent == null || moviedetailsevent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MovieEvent.Movielistevent:
        return movielistevent();
      case _MovieEvent.Moviedetailsevent:
        return moviedetailsevent(this as Moviedetailsevent);
    }
  }

  /// The [whenOrElse] method is equivalent to [when], but doesn't require
  /// all callbacks to be specified.
  ///
  /// On the other hand, it adds an extra orElse required parameter,
  /// for fallback behavior.
  R whenOrElse<R extends Object>(
      {R Function() movielistevent,
      R Function(Moviedetailsevent) moviedetailsevent,
      @required R Function(MovieEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MovieEvent.Movielistevent:
        if (movielistevent == null) break;
        return movielistevent();
      case _MovieEvent.Moviedetailsevent:
        if (moviedetailsevent == null) break;
        return moviedetailsevent(this as Moviedetailsevent);
    }
    return orElse(this);
  }

  /// The [whenPartial] method is equivalent to [whenOrElse],
  /// but non-exhaustive.
  void whenPartial(
      {void Function() movielistevent,
      void Function(Moviedetailsevent) moviedetailsevent}) {
    assert(() {
      if (movielistevent == null && moviedetailsevent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _MovieEvent.Movielistevent:
        if (movielistevent == null) break;
        return movielistevent();
      case _MovieEvent.Moviedetailsevent:
        if (moviedetailsevent == null) break;
        return moviedetailsevent(this as Moviedetailsevent);
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class Movielistevent extends MovieEvent {
  const Movielistevent() : super(_MovieEvent.Movielistevent);

  factory Movielistevent.create() = _MovielisteventImpl;
}

@immutable
class _MovielisteventImpl extends Movielistevent {
  const _MovielisteventImpl() : super();

  @override
  String toString() => 'Movielistevent()';
}

@immutable
abstract class Moviedetailsevent extends MovieEvent {
  const Moviedetailsevent({@required this.params})
      : super(_MovieEvent.Moviedetailsevent);

  factory Moviedetailsevent.create({@required dynamic params}) =
      _MoviedetailseventImpl;

  final dynamic params;

  /// Creates a copy of this Moviedetailsevent but with the given fields
  /// replaced with the new values.
  Moviedetailsevent copyWith({dynamic params});
}

@immutable
class _MoviedetailseventImpl extends Moviedetailsevent {
  const _MoviedetailseventImpl({@required this.params}) : super(params: params);

  @override
  final dynamic params;

  @override
  _MoviedetailseventImpl copyWith({Object params = superEnum}) =>
      _MoviedetailseventImpl(
        params: params == superEnum ? this.params : params as dynamic,
      );
  @override
  String toString() => 'Moviedetailsevent(params: ${this.params})';
  @override
  List<Object> get props => [params];
}
