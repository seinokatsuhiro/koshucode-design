import qualified Data.Time as T
import Example

main :: IO ()
main =
    do diff (2014, 10, 12, 00, 00, 00) (2014, 10, 12, 00, 00, 00)
       diff (2014, 10, 12, 00, 00, 00) (2014, 10, 12, 00, 00, 01)
       diff (2014, 10, 12, 00, 00, 00) (2014, 10, 12, 00, 01, 00)
       diff (2014, 10, 12, 00, 00, 00) (2014, 10, 12, 01, 00, 00)
       diff (2014, 10, 12, 08, 00, 00) (2014, 10, 12, 09, 00, 00)
       diff (2014, 10, 12, 00, 00, 00) (2014, 10, 12, 12, 00, 00)
       diff (2014, 10, 12, 00, 00, 00) (2014, 10, 12, 24, 00, 00)
       diff (2014, 10, 12, 00, 00, 00) (2014, 10, 13, 00, 00, 00)
       diff (2014, 10, 12, 00, 00, 00) (2014, 11, 12, 00, 00, 00)
       diff (2014, 10, 12, 00, 00, 00) (2015, 10, 12, 00, 00, 00)
    where
      diff d1 d2 = let u1 = utcFrom d1
                       u2 = utcFrom d2
                   in print (u1, u2, T.diffUTCTime u2 u1)
