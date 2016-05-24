# Slackgmote

Slackgmote is a small utility that depends on imagemagic and converts animated gifs to slack emoji.
It supports cropping them as well. Output will always meet slack standards and be named: 
`original_name_crop_slack.gif`

It is currently poorly written, not efficient, and has no tests. Feel free to re-write this in some
better way (like as a gem or something) and open a merge request. Or not. Whatever.

## Usage

`slackgmote path/to/gif.gif [WidthxHeight+offset+offset]`

## Installation

On OS X:

```
brew install alexives/slackgmote/slackgmote
```

Anywhere Else (with bash):

```
wget https://github.com/alexives/slackgmote/releases/download/v1.1/slackgmote
mv slackgmote /usr/local/bin/slackgmote
```