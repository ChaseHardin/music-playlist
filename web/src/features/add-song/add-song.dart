part of over_react.web.features;

@Factory()
UiFactory<AddSongProps> AddSong;

@Props()
class AddSongProps extends UiProps {

}

@State()
class AddSongState extends UiState{}

@Component()
class AddSongComponent<T extends AddSongProps, S extends AddSongState> extends UiStatefulComponent<T, S> {
  render() {
    return (
        (Dom.form()..className="form-horizontal") (
            (Dom.div()..className="form-group") (
                (Dom.label()..className="col-md-3 control-label")('Queue Song:'),
                (Dom.div()..className="col-md-9") (
                    (Dom.input()..className="form-control")()
                  )
              ),

              (Dom.div()..className="row") (
                  (Dom.div()..className="col-md-10 col-md-offset-2 text-right") (
                      (Dom.input()..className="btn btn-primary" ..type="button" ..value="Add Song")()
                  )
              )
          )
      );
  }
}