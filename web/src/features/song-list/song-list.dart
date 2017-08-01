part of over_react.web.features;

@Factory()
UiFactory<SongProps> Songs;

@Props()
class SongProps extends UiProps {
  List<String> songs;
}

@State()
class SongState extends UiState {}

@Component()
class SongListComponent<T extends SongProps, S extends SongState> extends UiStatefulComponent<T, S> {

  render() {
    return ((Dom.ul() ..className = "list-group") (
      props.songs.map((song) =>
        (Dom.li()..className="list-group-item" ..key=song) (song)
      )
    ));
  }
}