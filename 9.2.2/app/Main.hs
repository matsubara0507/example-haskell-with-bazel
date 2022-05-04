{-# LANGUAGE OverloadedRecordDot #-}

module Main where

import Lib

main :: IO ()
main = do
  let user1 = User 1 "hoge" False
      user2 = User 2 "fuga" True
      book1 = Book 1 "hogege" user1
  putStrLn user1.name
  putStrLn user2.name
  putStrLn book1.title
  putStrLn book1.author.name
