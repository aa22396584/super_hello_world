% Prolog Hello World
% Prolog 是一種邏輯程式語言
% 程式由事實（facts）和規則（rules）組成

% 定義一個規則來輸出 Hello World
hello :- write('Hello, World!'), nl.

% 程式進入點：自動執行 hello 規則
:- initialization(hello).
:- halt.
