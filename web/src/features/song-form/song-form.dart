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
class SongFormComponent<T extends SongFormProps, S extends SongFormState>
    extends UiStatefulComponent<T, S> {

  Map getDefaultProps() => (
          newProps()..songs = ['Excuse Me', 'Wake up Call', 'Wasteland']
      );

  render() {
    return (
        (Dom.div()..className = "row")
          (
            (Dom.div()..className = "container")
              (
                (Dom.div()..className = "well col-xs-6 col-xs-offset-3")
                  (
                    Dom.h3()('My Music Playlist:'), (Songs()..songs = props.songs)()
                )
            )
        )
    );
  }
}