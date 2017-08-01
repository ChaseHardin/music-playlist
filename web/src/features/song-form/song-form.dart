part of over_react.web.features;

@Factory()
UiFactory<SongFormProps> SongForm;

@Props()
class SongFormProps extends UiProps {}

@State()
class SongFormState extends UiState {}

@Component()
class SongFormComponent<T extends SongFormProps, S extends SongFormState> extends UiStatefulComponent<T, S> {
  render() {
    return (Songs()());
  }
}