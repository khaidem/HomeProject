part of 'imagepicker_bloc.dart';

@immutable
abstract class ImagepickerEvent {}

class OpenImagePicker extends ImagepickerEvent {
  final ImageSource imageSource;

  OpenImagePicker({required this.imageSource});
}
