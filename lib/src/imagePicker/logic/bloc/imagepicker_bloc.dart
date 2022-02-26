import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'imagepicker_event.dart';
part 'imagepicker_state.dart';

class ImagepickerBloc extends Bloc<ImagepickerEvent, ImagepickerState> {
  ImagepickerBloc() : super(ImagepickerInitial()) {
    on<ImagepickerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
