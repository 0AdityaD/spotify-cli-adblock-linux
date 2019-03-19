# spotify-cli-linux

[![Build Status](https://img.shields.io/travis/pwittchen/spotify-cli-linux.svg?branch=master&style=flat-square)](https://travis-ci.org/pwittchen/spotify-cli-linux) [![Version](https://img.shields.io/pypi/v/spotify-cli-linux.svg?style=flat-square)](https://pypi.python.org/pypi/spotify-cli-linux/) [![Python versions](https://img.shields.io/pypi/pyversions/spotify-cli-linux.svg?style=flat-square)](https://pypi.python.org/pypi/spotify-cli-linux/)

A command line interface to [Spotify](https://www.spotify.com/) on Linux as well as an "adblocker" that mutes ads.

installation
------------

```
git clone git@github.com:0AdityaD/spotify-cli-linux.git
cd spotify-cli-linux
sudo make
```

usage
-----

start the official Spotify desktop app

run the following command from your terminal:

```
spotifycli
```

use one of the following parameters:

```
-h, --help        show this help message and exit
--version         shows version number
--status          shows song name and artist
--statusshort     shows status in a short way
--song            shows the song name
--songshort       shows the song name in a short way
--artist          shows artists name
--artistshort     shows artist name in a short way
--album           shows album name
--lyrics          shows lyrics for the song playing
--playbackstatus  shows playback status
--play            plays the song
--pause           pauses the song
--playpause       plays or pauses the song (toggles a state)
--next            plays the next song
--prev            plays the previous song
--volumeup        increases sound volume
--volumedown      decreases sound volume
```

if you don't use any parameters, you'll enter the shell mode, when you'll be able to use all commands above

To run the adblocker, simply run

```
adblock
```

To kill the adblocker, simply run

```
pkill adblock
```

solving problems
----------------

When you've seen the following error:

```
No module named dbus
```

Then try to install `python-dbus`! On Ubuntu you can do it as follows:

```
sudo apt-get install python-dbus
```

If you are using another distro, then try to install `python-dbus` with your package manager.
