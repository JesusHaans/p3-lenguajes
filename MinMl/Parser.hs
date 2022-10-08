{-# OPTIONS_GHC -w #-}
module MinMl.Parser where

import MinMl.Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,290) ([112,1180,2,0,0,47104,20479,2,0,224,2360,0,0,0,28672,39936,1028,0,128,0,0,1024,128,57344,32766,64521,10239,1,0,112,1180,32782,49299,28673,14354,19968,1794,18880,224,2360,28,33063,57347,28708,39936,3588,37760,0,0,0,1,12288,0,1536,0,192,0,24,0,3,32608,0,4064,0,508,0,0,224,2360,28,33063,57347,36,1023,60928,46079,64960,4991,56,590,49159,57417,16382,56333,43007,1,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","MinMl","num","var","'('","')'","'+'","'-'","'*'","'='","'<'","'>'","'<='","'>='","'&&'","'||'","true","false","if","then","else","let","in","end","fun","'=>'","%eof"]
        bit_start = st * 29
        bit_end = (st + 1) * 29
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..28]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (19) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (5) = happyShift action_2
action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_5
action_3 (9) = happyShift action_16
action_3 (10) = happyShift action_17
action_3 (11) = happyShift action_18
action_3 (12) = happyShift action_19
action_3 (13) = happyShift action_20
action_3 (14) = happyShift action_21
action_3 (15) = happyShift action_22
action_3 (16) = happyShift action_23
action_3 (17) = happyShift action_24
action_3 (18) = happyShift action_25
action_3 (19) = happyShift action_6
action_3 (20) = happyShift action_7
action_3 (21) = happyShift action_8
action_3 (24) = happyShift action_9
action_3 (27) = happyShift action_10
action_3 (29) = happyAccept
action_3 (4) = happyGoto action_15
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (5) = happyShift action_2
action_5 (6) = happyShift action_4
action_5 (7) = happyShift action_5
action_5 (19) = happyShift action_6
action_5 (20) = happyShift action_7
action_5 (21) = happyShift action_8
action_5 (24) = happyShift action_9
action_5 (27) = happyShift action_10
action_5 (4) = happyGoto action_14
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_14

action_7 _ = happyReduce_15

action_8 (5) = happyShift action_2
action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (19) = happyShift action_6
action_8 (20) = happyShift action_7
action_8 (21) = happyShift action_8
action_8 (24) = happyShift action_9
action_8 (27) = happyShift action_10
action_8 (4) = happyGoto action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (28) = happyShift action_39
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (12) = happyShift action_38
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (5) = happyShift action_2
action_13 (6) = happyShift action_4
action_13 (7) = happyShift action_5
action_13 (9) = happyShift action_16
action_13 (10) = happyShift action_17
action_13 (11) = happyShift action_18
action_13 (12) = happyShift action_19
action_13 (13) = happyShift action_20
action_13 (14) = happyShift action_21
action_13 (15) = happyShift action_22
action_13 (16) = happyShift action_23
action_13 (17) = happyShift action_24
action_13 (18) = happyShift action_25
action_13 (19) = happyShift action_6
action_13 (20) = happyShift action_7
action_13 (21) = happyShift action_8
action_13 (22) = happyShift action_37
action_13 (24) = happyShift action_9
action_13 (27) = happyShift action_10
action_13 (4) = happyGoto action_15
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_2
action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_5
action_14 (8) = happyShift action_36
action_14 (9) = happyShift action_16
action_14 (10) = happyShift action_17
action_14 (11) = happyShift action_18
action_14 (12) = happyShift action_19
action_14 (13) = happyShift action_20
action_14 (14) = happyShift action_21
action_14 (15) = happyShift action_22
action_14 (16) = happyShift action_23
action_14 (17) = happyShift action_24
action_14 (18) = happyShift action_25
action_14 (19) = happyShift action_6
action_14 (20) = happyShift action_7
action_14 (21) = happyShift action_8
action_14 (24) = happyShift action_9
action_14 (27) = happyShift action_10
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_2
action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (9) = happyShift action_16
action_15 (10) = happyShift action_17
action_15 (11) = happyShift action_18
action_15 (12) = happyShift action_19
action_15 (13) = happyShift action_20
action_15 (14) = happyShift action_21
action_15 (15) = happyShift action_22
action_15 (16) = happyShift action_23
action_15 (17) = happyShift action_24
action_15 (18) = happyShift action_25
action_15 (19) = happyShift action_6
action_15 (20) = happyShift action_7
action_15 (21) = happyShift action_8
action_15 (24) = happyShift action_9
action_15 (27) = happyShift action_10
action_15 (4) = happyGoto action_15
action_15 _ = happyReduce_19

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (19) = happyShift action_6
action_16 (20) = happyShift action_7
action_16 (21) = happyShift action_8
action_16 (24) = happyShift action_9
action_16 (27) = happyShift action_10
action_16 (4) = happyGoto action_35
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_2
action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (19) = happyShift action_6
action_17 (20) = happyShift action_7
action_17 (21) = happyShift action_8
action_17 (24) = happyShift action_9
action_17 (27) = happyShift action_10
action_17 (4) = happyGoto action_34
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_2
action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (19) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (21) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (27) = happyShift action_10
action_18 (4) = happyGoto action_33
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (19) = happyShift action_6
action_19 (20) = happyShift action_7
action_19 (21) = happyShift action_8
action_19 (24) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (4) = happyGoto action_32
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_2
action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (19) = happyShift action_6
action_20 (20) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (24) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (4) = happyGoto action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_2
action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (19) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (21) = happyShift action_8
action_21 (24) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (4) = happyGoto action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_2
action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (19) = happyShift action_6
action_22 (20) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (24) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (4) = happyGoto action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (5) = happyShift action_2
action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (19) = happyShift action_6
action_23 (20) = happyShift action_7
action_23 (21) = happyShift action_8
action_23 (24) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (4) = happyGoto action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (5) = happyShift action_2
action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (19) = happyShift action_6
action_24 (20) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (24) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (4) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (5) = happyShift action_2
action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (19) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (24) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (4) = happyGoto action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (5) = happyShift action_2
action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (19) = happyShift action_6
action_26 (20) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (24) = happyShift action_9
action_26 (27) = happyShift action_10
action_26 (4) = happyGoto action_15
action_26 _ = happyReduce_13

action_27 (5) = happyShift action_2
action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (18) = happyShift action_25
action_27 (19) = happyShift action_6
action_27 (20) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (24) = happyShift action_9
action_27 (27) = happyShift action_10
action_27 (4) = happyGoto action_15
action_27 _ = happyReduce_12

action_28 (5) = happyShift action_2
action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (17) = happyShift action_24
action_28 (18) = happyShift action_25
action_28 (19) = happyShift action_6
action_28 (20) = happyShift action_7
action_28 (21) = happyShift action_8
action_28 (24) = happyShift action_9
action_28 (27) = happyShift action_10
action_28 (4) = happyGoto action_15
action_28 _ = happyReduce_11

action_29 (5) = happyShift action_2
action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (17) = happyShift action_24
action_29 (18) = happyShift action_25
action_29 (19) = happyShift action_6
action_29 (20) = happyShift action_7
action_29 (21) = happyShift action_8
action_29 (24) = happyShift action_9
action_29 (27) = happyShift action_10
action_29 (4) = happyGoto action_15
action_29 _ = happyReduce_10

action_30 (5) = happyShift action_2
action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (17) = happyShift action_24
action_30 (18) = happyShift action_25
action_30 (19) = happyShift action_6
action_30 (20) = happyShift action_7
action_30 (21) = happyShift action_8
action_30 (24) = happyShift action_9
action_30 (27) = happyShift action_10
action_30 (4) = happyGoto action_15
action_30 _ = happyReduce_8

action_31 (5) = happyShift action_2
action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (17) = happyShift action_24
action_31 (18) = happyShift action_25
action_31 (19) = happyShift action_6
action_31 (20) = happyShift action_7
action_31 (21) = happyShift action_8
action_31 (24) = happyShift action_9
action_31 (27) = happyShift action_10
action_31 (4) = happyGoto action_15
action_31 _ = happyReduce_7

action_32 (5) = happyShift action_2
action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (17) = happyShift action_24
action_32 (18) = happyShift action_25
action_32 (19) = happyShift action_6
action_32 (20) = happyShift action_7
action_32 (21) = happyShift action_8
action_32 (24) = happyShift action_9
action_32 (27) = happyShift action_10
action_32 (4) = happyGoto action_15
action_32 _ = happyReduce_9

action_33 (5) = happyShift action_2
action_33 (6) = happyShift action_4
action_33 (7) = happyShift action_5
action_33 (9) = happyShift action_16
action_33 (10) = happyShift action_17
action_33 (12) = happyShift action_19
action_33 (13) = happyShift action_20
action_33 (14) = happyShift action_21
action_33 (15) = happyShift action_22
action_33 (16) = happyShift action_23
action_33 (17) = happyShift action_24
action_33 (18) = happyShift action_25
action_33 (19) = happyShift action_6
action_33 (20) = happyShift action_7
action_33 (21) = happyShift action_8
action_33 (24) = happyShift action_9
action_33 (27) = happyShift action_10
action_33 (4) = happyGoto action_15
action_33 _ = happyReduce_6

action_34 (5) = happyShift action_2
action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (12) = happyShift action_19
action_34 (13) = happyShift action_20
action_34 (14) = happyShift action_21
action_34 (15) = happyShift action_22
action_34 (16) = happyShift action_23
action_34 (17) = happyShift action_24
action_34 (18) = happyShift action_25
action_34 (19) = happyShift action_6
action_34 (20) = happyShift action_7
action_34 (21) = happyShift action_8
action_34 (24) = happyShift action_9
action_34 (27) = happyShift action_10
action_34 (4) = happyGoto action_15
action_34 _ = happyReduce_5

action_35 (5) = happyShift action_2
action_35 (6) = happyShift action_4
action_35 (7) = happyShift action_5
action_35 (12) = happyShift action_19
action_35 (13) = happyShift action_20
action_35 (14) = happyShift action_21
action_35 (15) = happyShift action_22
action_35 (16) = happyShift action_23
action_35 (17) = happyShift action_24
action_35 (18) = happyShift action_25
action_35 (19) = happyShift action_6
action_35 (20) = happyShift action_7
action_35 (21) = happyShift action_8
action_35 (24) = happyShift action_9
action_35 (27) = happyShift action_10
action_35 (4) = happyGoto action_15
action_35 _ = happyReduce_4

action_36 _ = happyReduce_3

action_37 (5) = happyShift action_2
action_37 (6) = happyShift action_4
action_37 (7) = happyShift action_5
action_37 (19) = happyShift action_6
action_37 (20) = happyShift action_7
action_37 (21) = happyShift action_8
action_37 (24) = happyShift action_9
action_37 (27) = happyShift action_10
action_37 (4) = happyGoto action_42
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (5) = happyShift action_2
action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_5
action_38 (19) = happyShift action_6
action_38 (20) = happyShift action_7
action_38 (21) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (27) = happyShift action_10
action_38 (4) = happyGoto action_41
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (5) = happyShift action_2
action_39 (6) = happyShift action_4
action_39 (7) = happyShift action_5
action_39 (19) = happyShift action_6
action_39 (20) = happyShift action_7
action_39 (21) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (27) = happyShift action_10
action_39 (4) = happyGoto action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (5) = happyShift action_2
action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_5
action_40 (9) = happyShift action_16
action_40 (10) = happyShift action_17
action_40 (11) = happyShift action_18
action_40 (12) = happyShift action_19
action_40 (13) = happyShift action_20
action_40 (14) = happyShift action_21
action_40 (15) = happyShift action_22
action_40 (16) = happyShift action_23
action_40 (17) = happyShift action_24
action_40 (18) = happyShift action_25
action_40 (19) = happyShift action_6
action_40 (20) = happyShift action_7
action_40 (21) = happyShift action_8
action_40 (24) = happyShift action_9
action_40 (27) = happyShift action_10
action_40 (4) = happyGoto action_15
action_40 _ = happyReduce_18

action_41 (5) = happyShift action_2
action_41 (6) = happyShift action_4
action_41 (7) = happyShift action_5
action_41 (9) = happyShift action_16
action_41 (10) = happyShift action_17
action_41 (11) = happyShift action_18
action_41 (12) = happyShift action_19
action_41 (13) = happyShift action_20
action_41 (14) = happyShift action_21
action_41 (15) = happyShift action_22
action_41 (16) = happyShift action_23
action_41 (17) = happyShift action_24
action_41 (18) = happyShift action_25
action_41 (19) = happyShift action_6
action_41 (20) = happyShift action_7
action_41 (21) = happyShift action_8
action_41 (24) = happyShift action_9
action_41 (25) = happyShift action_44
action_41 (27) = happyShift action_10
action_41 (4) = happyGoto action_15
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (5) = happyShift action_2
action_42 (6) = happyShift action_4
action_42 (7) = happyShift action_5
action_42 (9) = happyShift action_16
action_42 (10) = happyShift action_17
action_42 (11) = happyShift action_18
action_42 (12) = happyShift action_19
action_42 (13) = happyShift action_20
action_42 (14) = happyShift action_21
action_42 (15) = happyShift action_22
action_42 (16) = happyShift action_23
action_42 (17) = happyShift action_24
action_42 (18) = happyShift action_25
action_42 (19) = happyShift action_6
action_42 (20) = happyShift action_7
action_42 (21) = happyShift action_8
action_42 (23) = happyShift action_43
action_42 (24) = happyShift action_9
action_42 (27) = happyShift action_10
action_42 (4) = happyGoto action_15
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (5) = happyShift action_2
action_43 (6) = happyShift action_4
action_43 (7) = happyShift action_5
action_43 (19) = happyShift action_6
action_43 (20) = happyShift action_7
action_43 (21) = happyShift action_8
action_43 (24) = happyShift action_9
action_43 (27) = happyShift action_10
action_43 (4) = happyGoto action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (5) = happyShift action_2
action_44 (6) = happyShift action_4
action_44 (7) = happyShift action_5
action_44 (19) = happyShift action_6
action_44 (20) = happyShift action_7
action_44 (21) = happyShift action_8
action_44 (24) = happyShift action_9
action_44 (27) = happyShift action_10
action_44 (4) = happyGoto action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (5) = happyShift action_2
action_45 (6) = happyShift action_4
action_45 (7) = happyShift action_5
action_45 (9) = happyShift action_16
action_45 (10) = happyShift action_17
action_45 (11) = happyShift action_18
action_45 (12) = happyShift action_19
action_45 (13) = happyShift action_20
action_45 (14) = happyShift action_21
action_45 (15) = happyShift action_22
action_45 (16) = happyShift action_23
action_45 (17) = happyShift action_24
action_45 (18) = happyShift action_25
action_45 (19) = happyShift action_6
action_45 (20) = happyShift action_7
action_45 (21) = happyShift action_8
action_45 (24) = happyShift action_9
action_45 (26) = happyShift action_48
action_45 (27) = happyShift action_10
action_45 (4) = happyGoto action_15
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (5) = happyShift action_2
action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_5
action_46 (9) = happyShift action_16
action_46 (10) = happyShift action_17
action_46 (11) = happyShift action_18
action_46 (12) = happyShift action_19
action_46 (13) = happyShift action_20
action_46 (14) = happyShift action_21
action_46 (15) = happyShift action_22
action_46 (16) = happyShift action_23
action_46 (17) = happyShift action_24
action_46 (18) = happyShift action_25
action_46 (19) = happyShift action_6
action_46 (20) = happyShift action_7
action_46 (21) = happyShift action_8
action_46 (24) = happyShift action_9
action_46 (26) = happyShift action_47
action_46 (27) = happyShift action_10
action_46 (4) = happyGoto action_15
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_16

action_48 _ = happyReduce_17

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sum happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Res happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Le happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Ge happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  4 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn4
		 (True
	)

happyReduce_15 = happySpecReduce_1  4 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn4
		 (False
	)

happyReduce_16 = happyReduce 7 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 7 4 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 4 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Fun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 29 29 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokNum happy_dollar_dollar -> cont 5;
	TokVar happy_dollar_dollar -> cont 6;
	TokOParen -> cont 7;
	TokCParen -> cont 8;
	TokSum -> cont 9;
	TokRes -> cont 10;
	TokMul -> cont 11;
	TokEq -> cont 12;
	TokLt -> cont 13;
	TokGt -> cont 14;
	TokLe -> cont 15;
	TokGe -> cont 16;
	TokAnd -> cont 17;
	TokOr -> cont 18;
	TokTrue -> cont 19;
	TokFalse -> cont 20;
	TokIf -> cont 21;
	TokThen -> cont 22;
	TokElse -> cont 23;
	TokLet -> cont 24;
	TokIn -> cont 25;
	TokEnd -> cont 26;
	TokFun -> cont 27;
	TokArrow -> cont 28;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 29 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


mainInter = getContents >>= print . parser . lexer
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
