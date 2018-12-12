# MediaInfo Workflow for Alfred

This is an [Alfred](https://www.alfredapp.com) workflow for running the CLI
version of [MediaInfo](https://mediaarea.net/en/MediaInfo). You need to
purchase the [Alfred Powerpack](https://www.alfredapp.com/powerpack/) to use
this workflow.

## Features

This workflow contains a [file
action](https://www.alfredapp.com/help/workflows/triggers/file-action/) that
processes video/movie files using `mediainfo`. The output is written to a `txt`
file in `/tmp`, which is then opened in the associated app.

## Requirements

You need to install `mediainfo` in `/usr/bin/local/`. If you're using Homebrew:

```bash
brew install mediainfo
```
