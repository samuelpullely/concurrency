module MyLib where

import Control.Monad

someFunc :: IO ()
someFunc = putStrLn "someFunc"

numberForever :: Show a => a -> IO b
numberForever = forever . print
