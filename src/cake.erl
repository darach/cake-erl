-module(cake).

-export([fg/2]).
-export([bg/2]).
-export([ta/2]).

-type color() :: 
    default |
    black | 
    red | 
    green | 
    yellow | 
    blue | 
    magenta |
    cyan |
    lightgray |
    darkgray |
    lightred |
    lightgreen |
    lightyellow |
    lightblue |
    lightmagenta |
    lightcyan |
    white |
    0..255.

-type attribute() :: 
    bold |
    dim |
    under |
    blink |
    reverse |
    norm.

-export_type([color/0]).
-export_type([attribute/0]).

-spec fg(color(),string()) -> string().
fg(default,S) -> "\e[39m" ++ S ++ reset();
fg(black,S) -> "\e[30m" ++ S ++ reset();
fg(red,S) -> "\e[31m" ++ S ++ reset();
fg(green,S) -> "\e[32m" ++ S ++ reset();
fg(yellow,S) -> "\e[33m" ++ S ++ reset();
fg(blue,S) -> "\e[34m" ++ S ++ reset();
fg(magenta,S) -> "\e[35m" ++ S ++ reset();
fg(cyan,S) -> "\e[36m" ++ S ++ reset();
fg(lightgray,S) -> "\e[37m" ++ S ++ reset();
fg(darkgray,S) -> "\e[90m" ++ S ++ reset();
fg(lightred,S) -> "\e[91m" ++ S ++ reset();
fg(lightgreen,S) -> "\e[92m" ++ S ++ reset();
fg(lightyellow,S) -> "\e[93m" ++ S ++ reset();
fg(lightblue,S) -> "\e[94m" ++ S ++ reset();
fg(lightmagenta,S) -> "\e[95m" ++ S ++ reset();
fg(lightcyan,S) -> "\e[96m" ++ S ++ reset();
fg(white,S) -> "\e[97m" ++ S ++ reset();
fg(N,S) when is_integer(N) -> "\e[38;5;" ++ integer_to_list(N) ++ "m" ++ S ++ reset();
fg(_,S) -> S.

-spec bg(color(),string()) -> string().
bg(default,S) -> "\e[49m" ++ S ++ reset();
bg(black,S) -> "\e[40m" ++ S ++ reset();
bg(red,S) -> "\e[41m" ++ S ++ reset();
bg(green,S) -> "\e[42m" ++ S ++ reset();
bg(yellow,S) -> "\e[43m" ++ S ++ reset();
bg(blue,S) -> "\e[44m" ++ S ++ reset();
bg(magenta,S) -> "\e[45m" ++ S ++ reset();
bg(cyan,S) -> "\e[46m" ++ S ++ reset();
bg(lightgray,S) -> "\e[47m" ++ S ++ reset();
bg(darkgray,S) -> "\e[100m" ++ S ++ reset();
bg(lightred,S) -> "\e[101m" ++ S ++ reset();
bg(lightgreen,S) -> "\e[102m" ++ S ++ reset();
bg(lightyellow,S) -> "\e[103m" ++ S ++ reset();
bg(lightblue,S) -> "\e[104m" ++ S ++ reset();
bg(lightmagenta,S) -> "\e[105m" ++ S ++ reset();
bg(lightcyan,S) -> "\e[106m" ++ S ++ reset();
bg(white,S) -> "\e[107m" ++ S ++ reset();
bg(N,S) when is_integer(N) -> "\e[48;5;" ++ integer_to_list(N) ++ "m" ++ S ++ reset();
bg(_,S) -> S.

-spec ta(attribute(),string()) -> string().
ta(norm,S) -> "\e[0m" ++ S ++ reset();
ta(bold,S) -> "\e[1m" ++ S ++ reset();
ta(dim,S) -> "\e[2m" ++ S ++ reset();
ta(under,S) -> "\e[4m" ++ S ++ reset();
ta(blink,S) -> "\e[5m" ++ S ++ reset();
ta(reverse,S) -> "\e[7m" ++ S ++ reset();
ta(_,S) -> S.

-spec reset() -> string().
reset() -> "\e[0m".
