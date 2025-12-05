% Erlang Hello World
% Erlang 是一個並發導向的函數式程式語言
% io:format 函數用於格式化輸出

-module(hello).
-export([main/0]).

main() ->
    io:format("Hello, World!~n").
