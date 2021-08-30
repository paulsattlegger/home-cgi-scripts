#!/usr/bin/env bash

cat <<EOF
Content-type: text/html

<!DOCTYPE html>
<html lang="en">

<head>
    <title>
        wake
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
etherwake -i wlxxxxxxxxxxxxx -b -D XX:XX:XX:XX:XX:XX 2>&1
cat <<EOF
    </pre>
</body>

</html>
EOF
