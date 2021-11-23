import 'package:super_enum/super_enum.dart';
part 'movie_event.super.dart';

@superEnum
enum _MovieEvent{
@object
Movielistevent,
@Data(fields:[ DataField<dynamic>("params")])
Moviedetailsevent,
@Data(fields:[ DataField<dynamic>("params")])
Search

}