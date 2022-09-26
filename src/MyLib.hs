module MyLib where

import Control.Concurrent
import Control.Monad

someFunc :: IO ()
someFunc = putStrLn "someFunc"

numberForever :: Int -> IO b
numberForever = forever . print

seconds :: Int
seconds = 1000000

mainFunc :: IO ()
mainFunc = do
    mapM_ (forkIO . numberForever) [1..10]
    threadDelay $ 5 * seconds
    putStrLn "done"
