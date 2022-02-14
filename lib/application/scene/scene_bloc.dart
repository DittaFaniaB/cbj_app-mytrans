// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:cybear_jinni/domain/scene/i_scene_cbj_repository.dart';
// import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kt_dart/collection.dart';
//
// part 'scene_bloc.freezed.dart';
// part 'scene_event.dart';
// part 'scene_state.dart';
//
// @injectable
// class SceneBloc extends Bloc<SceneEvent, SceneState> {
//   SceneBloc(this._iSceneRepository) : super(SceneState.initialized()) {
//     on<Initialized>(_initialized);
//   }
//
//   final ISceneCbjRepository _iSceneRepository;
//
//   Future<void> _initialized(
//     Initialized event,
//     Emitter<SceneState> emit,
//   ) async {
//     emit(const SceneState.loading());
//     _iSceneRepository.watchAllScenes().listen((event) {
//       emit(
//         event.fold(
//           (f) => const SceneState.error(),
//           (sceneState) => SceneState.loaded(sceneState),
//         ),
//       );
//     });
//   }
// }
