part of over_react.web.features;

@Factory()
UiFactory<AddSongProps> AddSong;

@Props()
class AddSongProps extends UiProps {
  dynamic handleAddSong;
}

@State()
class AddSongState extends UiState {
  String newSong;
}

@Component()
class AddSongComponent<T extends AddSongProps, S extends AddSongState> extends UiStatefulComponent<T, S> {

  void _handleChange(SyntheticFormEvent event) {
    setState(newState()
      ..newSong = event.target.value
    );
  }

  void _onClick(SyntheticMouseEvent event) {
    this.props.handleAddSong(state.newSong);
  }

  render() {
    return (
        (Dom.form()
          ..className = "form-horizontal")(
            (Dom.div()
              ..className = "form-group")(
                (Dom.label()
                  ..className = "col-md-3 control-label")('Queue Song:'),
                (Dom.div()
                  ..className = "col-md-9")(
                    (Dom.input()
                      ..className = "form-control" ..onChange = _handleChange)()
                )
            ),

            (Dom.div()
              ..className = "row")(
                (Dom.div()
                  ..className = "col-md-10 col-md-offset-2 text-right")(
                    (Dom.input()
                      ..type = "button"
                      ..value = "Add Song"
                      ..className = "btn btn-primary"
                      ..onClick = _onClick)()
                )
            )
        )
    );
  }
}