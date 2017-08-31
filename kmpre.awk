# KM Pre Processor v1.0
function ltrim(s) { sub(/^ */, "", s); return s }
function rtrim(s) { sub(/ *$/, "", s); return s }
function trim(s) { return rtrim(ltrim(s)); }

/^[@]INCLUDE/ {
     glbINIFILE=$2
     while ((getline line < glbINIFILE) > 0) print line
     close(glbINIFILE)
     next
}


{
     print $0
}

