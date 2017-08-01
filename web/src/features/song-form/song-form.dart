part of over_react.web.features;

@Factory()
UiFactory<SongFormProps> SongForm;

@Props()
class SongFormProps extends UiProps {
  List<String> songs;
}

@State()
class SongFormState extends UiState {}

@Component()
class SongFormComponent<T extends SongFormProps, S extends SongFormState> extends UiStatefulComponent<T, S> {

  Map getDefaultProps() => (
    newProps()
      ..songs = ['Excuse Me', 'Wake up Call', 'Wasteland']
  );

  render() {
    return (Songs()..songs = props.songs)();
  }
}