#!/usr/bin/env python3

import cgi
import os

import youtube_dl


class Logger():
    def debug(self, msg):
        print(msg)

    def warning(self, msg):
        print(msg)

    def error(self, msg):
        print(msg)


def get_url():
    form = cgi.FieldStorage()
    return form.getfirst('url')


if __name__ == '__main__':
    os.chdir('/var/www/html/dl.py')

    print("""Content-Type: text/html; charset=utf-8

<!DOCTYPE html>
<html lang="en">

<head>
    <title>
        dl
    </title>
    <style>
    .cmd {
        white-space: pre-wrap;
        font-size: xx-large;
    }
    </style>
</head>

<body>
    <pre class="cmd">""")

    if get_url():
        ydl_opts = {
            'cachedir': False,
            'logger': Logger()
        }
        with youtube_dl.YoutubeDL(ydl_opts) as ydl:
            ydl.download([get_url()])

    print("""
    </pre>
</body>

</html>""")
