


import 'package:super_enum/super_enum.dart';

part 'movie_state.super.dart';

@superEnum
enum _MovieState{
@object
Initial,
@object
Loading,
@Data(fields: [DataField<dynamic>('response')])
Movielist,
@Data(fields: [DataField<dynamic>('response')])
Moviedetails,
@object
Error,
}