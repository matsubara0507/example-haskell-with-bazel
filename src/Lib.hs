{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NoFieldSelectors      #-}

module Lib where

showNotImpl :: IO ()
showNotImpl = putStrLn "not yet implement command"

data User = User 
  { id :: Int
  , name :: String
  , admin :: Bool
  }

data Book = Book
  { id :: Int
  , title :: String
  , author :: User
  }
