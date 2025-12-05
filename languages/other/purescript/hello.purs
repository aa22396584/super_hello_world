-- PureScript Hello World
-- PureScript 是一種強型別的函數式語言
-- 編譯成 JavaScript

module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

-- main 函數是程式的進入點
main :: Effect Unit
main = log "Hello, World!"
