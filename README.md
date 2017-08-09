## Music-Playlist Application

The purpose of this application was to learn `Over_React`. `Over_React` is a wrapper on `ReactJS`. To learn more, please visit Workiva's documentation [here.](https://workiva.github.io/over_react/)

## Folder Structure

The folder structure is packaged by features. See details below.

```
music-playlist/
    .pub/
    web/
        src/
            features/
                add-song/
                    add-song.dart
                song-form/
                    song-form.dart
                song-list/
                    song-list.dart
            features.dart
        favicon.ico
        index.html
        main.dart
        syles.css
    .gitignore
    .packages
    analysis_options.yaml
    CHANGELOG.md
    LICENSE.txt
    pubspec.lock
    pubspec.yaml
    README.md       
```

## Install Dependencies
To get all the dependencies, we need to run the `pub get` command. This is built off the `pubspec.yaml` file.

The key `over_react` pieces require us to update our `dependencies` and `transformers`

```
dependencies:
     over_react: "^1.14.0"
     
transformers:
    - over_react
    - dart_to_js_script_rewriter
    - $dart2js
```

## Start Application
At the root of the application, `music-playlist` run the `pub serve` command.