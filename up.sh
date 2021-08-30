#!/usr/bin/env bash

cat <<EOF
Content-type: text/html

<!DOCTYPE html>
<html lang="en">

<head>
    <title>
        up
    </title>
    <style>
    .cmd {
         white-space: pre-wrap;
         font-size: xx-large;
    }
    </style>
</head>

<body>
    <pre class="cmd">
EOF
host DESKTOP-XXXXXXX
ping -c 1 -q DESKTOP-XXXXXXX 2> /dev/null
cat <<EOF
    </pre>
</body>

</html>
EOF
