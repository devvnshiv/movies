// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: return_of_invalid_type, constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_this, sort_unnamed_constructors_first, join_return_with_assignment, missing_return, lines_longer_than_80_chars

part of 'movie_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class MovieState extends Equatable {
  const MovieState(this._type);

  factory MovieState.initial() = Initial.create;

  factory MovieState.loading() = Loading.create;

  factory MovieState.movielist({@required dynamic response}) = Movielist.create;

  factory MovieState.moviedetails({@required dynamic response}) =
      Moviedetails.create;

  factory MovieState.error() = Error.create;

  final _MovieState _type;

  /// The [when] method is the equivalent to pattern matching.
  /// Its prototype depends on the _MovieState [_type]s defined.
  R when<R extends Object>(
      {@required R Function() initial,
      @required R Function() loading,
      @required R Function(Movielist) movielist,
      @required R Function(Moviedetails) moviedetails,
      @required R Function() error}) {
    assert(() {
      if (initial == null ||
          loading == null ||
          movielist == null ||
          moviedetails == null ||
          error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MovieState.Initial:
        return initial();
      case _MovieState.Loading:
        return loading();
      case _MovieState.Movielist:
        return movielist(this as Movielist);
      case _MovieState.Moviedetails:
        return moviedetails(this as Moviedetails);
      case _MovieState.Error:
        return error();
    }
  }

  /// The [whenOrElse] method is equivalent to [when], but doesn't require
  /// all callbacks to be specified.
  ///
  /// On the other hand, it adds an extra orElse required parameter,
  /// for fallback behavior.
  R whenOrElse<R extends Object>(
      {R Function() initial,
      R Function() loading,
      R Function(Movielist) movielist,
      R Function(Moviedetails) moviedetails,
      R Function() error,
      @required R Function(MovieState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MovieState.Initial:
        if (initial == null) break;
        return initial();
      case _MovieState.Loading:
        if (loading == null) break;
        return loading();
      case _MovieState.Movielist:
        if (movielist == null) break;
        return movielist(this as Movielist);
      case _MovieState.Moviedetails:
        if (moviedetails == null) break;
        return moviedetails(this as Moviedetails);
      case _MovieState.Error:
        if (error == null) break;
        return error();
    }
    return orElse(this);
  }

  /// The [whenPartial] method is equivalent to [whenOrElse],
  /// but non-exhaustive.
  void whenPartial(
      {void Function() initial,
      void Function() loading,
      void Function(Movielist) movielist,
      void Function(Moviedetails) moviedetails,
      void Function() error}) {
    assert(() {
      if (initial == null &&
          loading == null &&
          movielist == null &&
          moviedetails == null &&
          error == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _MovieState.Initial:
        if (initial == null) break;
        return initial();
      case _MovieState.Loading:
        if (loading == null) break;
        return loading();
      case _MovieState.Movielist:
        if (movielist == null) break;
        return movielist(this as Movielist);
      case _MovieState.Moviedetails:
        if (moviedetails == null) break;
        return moviedetails(this as Moviedetails);
      case _MovieState.Error:
        if (error == null) break;
        return error();
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class Initial extends MovieState {
  const Initial() : super(_MovieState.Initial);

  factory Initial.create() = _InitialImpl;
}

@immutable
class _InitialImpl extends Initial {
  const _InitialImpl() : super();

  @override
  String toString() => 'Initial()';
}

@immutable
abstract class Loading extends MovieState {
  const Loading() : super(_MovieState.Loading);

  factory Loading.create() = _LoadingImpl;
}

@immutable
class _LoadingImpl extends Loading {
  const _LoadingImpl() : super();

  @override
  String toString() => 'Loading()';
}

@immutable
abstract class Movielist extends MovieState {
  const Movielist({@required this.response}) : super(_MovieState.Movielist);

  factory Movielist.create({@required dynamic response}) = _MovielistImpl;

  final dynamic response;

  /// Creates a copy of this Movielist but with the given fields
  /// replaced with the new values.
  Movielist copyWith({dynamic response});
}

@immutable
class _MovielistImpl extends Movielist {
  const _MovielistImpl({@required this.response}) : super(response: response);

  @override
  final dynamic response;

  @override
  _MovielistImpl copyWith({Object response = superEnum}) => _MovielistImpl(
        response: response == superEnum ? this.response : response as dynamic,
      );
  @override
  String toString() => 'Movielist(response: ${this.response})';
  @override
  List<Object> get props => [response];
}

@immutable
abstract class Moviedetails extends MovieState {
  const Moviedetails({@required this.response})
      : super(_MovieState.Moviedetails);

  factory Moviedetails.create({@required dynamic response}) = _MoviedetailsImpl;

  final dynamic response;

  /// Creates a copy of this Moviedetails but with the given fields
  /// replaced with the new values.
  Moviedetails copyWith({dynamic response});
}

@immutable
class _MoviedetailsImpl extends Moviedetails {
  const _MoviedetailsImpl({@required this.response})
      : super(response: response);

  @override
  final dynamic response;

  @override
  _MoviedetailsImpl copyWith({Object response = superEnum}) =>
      _MoviedetailsImpl(
        response: response == superEnum ? this.response : response as dynamic,
      );
  @override
  String toString() => 'Moviedetails(response: ${this.response})';
  @override
  List<Object> get props => [response];
}

@immutable
abstract class Error extends MovieState {
  const Error() : super(_MovieState.Error);

  factory Error.create() = _ErrorImpl;
}

@immutable
class _ErrorImpl extends Error {
  const _ErrorImpl() : super();

  @override
  String toString() => 'Error()';
}
