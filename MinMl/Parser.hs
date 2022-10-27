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
happyExpList = Happy_Data_Array.listArray (0,187) ([112,1228,2,0,0,32768,511,0,0,224,2456,0,32768,24579,8230,0,1024,0,128,0,0,1024,128,0,16,49152,1279,65408,9855,112,1228,32782,49305,12289,14355,26112,1794,19648,224,2456,28,33075,24579,28710,52224,3588,39296,0,0,0,1,12288,0,1536,0,192,0,24,0,3,32608,0,4064,0,508,63488,63,0,0,28,33075,24579,28710,52224,3588,39296,64512,15,65408,129,16368,16,18430,0,0,896,9824,112,1228,32782,153,4092,32776,511,61441,63,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","MinMl","num","var","'('","')'","'+'","'-'","'*'","'='","'<'","'>'","'<='","'>='","'&&'","'||'","b","if","then","else","let","letrec","in","end","fun","'=>'","%eof"]
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
action_0 (23) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

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
action_3 (29) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (5) = happyShift action_2
action_5 (6) = happyShift action_4
action_5 (7) = happyShift action_5
action_5 (19) = happyShift action_6
action_5 (20) = happyShift action_7
action_5 (23) = happyShift action_8
action_5 (24) = happyShift action_9
action_5 (27) = happyShift action_10
action_5 (4) = happyGoto action_15
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_14

action_7 (5) = happyShift action_2
action_7 (6) = happyShift action_4
action_7 (7) = happyShift action_5
action_7 (19) = happyShift action_6
action_7 (20) = happyShift action_7
action_7 (23) = happyShift action_8
action_7 (24) = happyShift action_9
action_7 (27) = happyShift action_10
action_7 (4) = happyGoto action_14
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (28) = happyShift action_41
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (12) = happyShift action_40
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_39
action_13 _ = happyFail (happyExpListPerState 13)

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
action_14 (21) = happyShift action_38
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_2
action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_37
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
action_15 (23) = happyShift action_8
action_15 (24) = happyShift action_9
action_15 (27) = happyShift action_10
action_15 (4) = happyGoto action_36
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (19) = happyShift action_6
action_16 (20) = happyShift action_7
action_16 (23) = happyShift action_8
action_16 (24) = happyShift action_9
action_16 (27) = happyShift action_10
action_16 (4) = happyGoto action_35
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_2
action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (19) = happyShift action_6
action_17 (20) = happyShift action_7
action_17 (23) = happyShift action_8
action_17 (24) = happyShift action_9
action_17 (27) = happyShift action_10
action_17 (4) = happyGoto action_34
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_2
action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (19) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (23) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (27) = happyShift action_10
action_18 (4) = happyGoto action_33
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (19) = happyShift action_6
action_19 (20) = happyShift action_7
action_19 (23) = happyShift action_8
action_19 (24) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (4) = happyGoto action_32
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_2
action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (19) = happyShift action_6
action_20 (20) = happyShift action_7
action_20 (23) = happyShift action_8
action_20 (24) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (4) = happyGoto action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_2
action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (19) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (23) = happyShift action_8
action_21 (24) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (4) = happyGoto action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_2
action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (19) = happyShift action_6
action_22 (20) = happyShift action_7
action_22 (23) = happyShift action_8
action_22 (24) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (4) = happyGoto action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (5) = happyShift action_2
action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (19) = happyShift action_6
action_23 (20) = happyShift action_7
action_23 (23) = happyShift action_8
action_23 (24) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (4) = happyGoto action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (5) = happyShift action_2
action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (19) = happyShift action_6
action_24 (20) = happyShift action_7
action_24 (23) = happyShift action_8
action_24 (24) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (4) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (5) = happyShift action_2
action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (19) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (23) = happyShift action_8
action_25 (24) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (4) = happyGoto action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_13

action_27 (18) = happyShift action_25
action_27 _ = happyReduce_12

action_28 (17) = happyShift action_24
action_28 (18) = happyShift action_25
action_28 _ = happyReduce_11

action_29 (17) = happyShift action_24
action_29 (18) = happyShift action_25
action_29 _ = happyReduce_10

action_30 (17) = happyShift action_24
action_30 (18) = happyShift action_25
action_30 _ = happyReduce_8

action_31 (17) = happyShift action_24
action_31 (18) = happyShift action_25
action_31 _ = happyReduce_7

action_32 (17) = happyShift action_24
action_32 (18) = happyShift action_25
action_32 _ = happyReduce_9

action_33 (9) = happyShift action_16
action_33 (10) = happyShift action_17
action_33 (12) = happyShift action_19
action_33 (13) = happyShift action_20
action_33 (14) = happyShift action_21
action_33 (15) = happyShift action_22
action_33 (16) = happyShift action_23
action_33 (17) = happyShift action_24
action_33 (18) = happyShift action_25
action_33 _ = happyReduce_6

action_34 (12) = happyShift action_19
action_34 (13) = happyShift action_20
action_34 (14) = happyShift action_21
action_34 (15) = happyShift action_22
action_34 (16) = happyShift action_23
action_34 (17) = happyShift action_24
action_34 (18) = happyShift action_25
action_34 _ = happyReduce_5

action_35 (12) = happyShift action_19
action_35 (13) = happyShift action_20
action_35 (14) = happyShift action_21
action_35 (15) = happyShift action_22
action_35 (16) = happyShift action_23
action_35 (17) = happyShift action_24
action_35 (18) = happyShift action_25
action_35 _ = happyReduce_4

action_36 (8) = happyShift action_46
action_36 (9) = happyShift action_16
action_36 (10) = happyShift action_17
action_36 (11) = happyShift action_18
action_36 (12) = happyShift action_19
action_36 (13) = happyShift action_20
action_36 (14) = happyShift action_21
action_36 (15) = happyShift action_22
action_36 (16) = happyShift action_23
action_36 (17) = happyShift action_24
action_36 (18) = happyShift action_25
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_3

action_38 (5) = happyShift action_2
action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_5
action_38 (19) = happyShift action_6
action_38 (20) = happyShift action_7
action_38 (23) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (27) = happyShift action_10
action_38 (4) = happyGoto action_45
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (5) = happyShift action_2
action_39 (6) = happyShift action_4
action_39 (7) = happyShift action_5
action_39 (19) = happyShift action_6
action_39 (20) = happyShift action_7
action_39 (23) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (27) = happyShift action_10
action_39 (4) = happyGoto action_44
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (5) = happyShift action_2
action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_5
action_40 (19) = happyShift action_6
action_40 (20) = happyShift action_7
action_40 (23) = happyShift action_8
action_40 (24) = happyShift action_9
action_40 (27) = happyShift action_10
action_40 (4) = happyGoto action_43
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (5) = happyShift action_2
action_41 (6) = happyShift action_4
action_41 (7) = happyShift action_5
action_41 (19) = happyShift action_6
action_41 (20) = happyShift action_7
action_41 (23) = happyShift action_8
action_41 (24) = happyShift action_9
action_41 (27) = happyShift action_10
action_41 (4) = happyGoto action_42
action_41 _ = happyFail (happyExpListPerState 41)

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
action_42 _ = happyReduce_18

action_43 (9) = happyShift action_16
action_43 (10) = happyShift action_17
action_43 (11) = happyShift action_18
action_43 (12) = happyShift action_19
action_43 (13) = happyShift action_20
action_43 (14) = happyShift action_21
action_43 (15) = happyShift action_22
action_43 (16) = happyShift action_23
action_43 (17) = happyShift action_24
action_43 (18) = happyShift action_25
action_43 (25) = happyShift action_49
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (9) = happyShift action_16
action_44 (10) = happyShift action_17
action_44 (11) = happyShift action_18
action_44 (12) = happyShift action_19
action_44 (13) = happyShift action_20
action_44 (14) = happyShift action_21
action_44 (15) = happyShift action_22
action_44 (16) = happyShift action_23
action_44 (17) = happyShift action_24
action_44 (18) = happyShift action_25
action_44 (25) = happyShift action_48
action_44 _ = happyFail (happyExpListPerState 44)

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
action_45 (22) = happyShift action_47
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_19

action_47 (5) = happyShift action_2
action_47 (6) = happyShift action_4
action_47 (7) = happyShift action_5
action_47 (19) = happyShift action_6
action_47 (20) = happyShift action_7
action_47 (23) = happyShift action_8
action_47 (24) = happyShift action_9
action_47 (27) = happyShift action_10
action_47 (4) = happyGoto action_52
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (5) = happyShift action_2
action_48 (6) = happyShift action_4
action_48 (7) = happyShift action_5
action_48 (19) = happyShift action_6
action_48 (20) = happyShift action_7
action_48 (23) = happyShift action_8
action_48 (24) = happyShift action_9
action_48 (27) = happyShift action_10
action_48 (4) = happyGoto action_51
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (5) = happyShift action_2
action_49 (6) = happyShift action_4
action_49 (7) = happyShift action_5
action_49 (19) = happyShift action_6
action_49 (20) = happyShift action_7
action_49 (23) = happyShift action_8
action_49 (24) = happyShift action_9
action_49 (27) = happyShift action_10
action_49 (4) = happyGoto action_50
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (9) = happyShift action_16
action_50 (10) = happyShift action_17
action_50 (11) = happyShift action_18
action_50 (12) = happyShift action_19
action_50 (13) = happyShift action_20
action_50 (14) = happyShift action_21
action_50 (15) = happyShift action_22
action_50 (16) = happyShift action_23
action_50 (17) = happyShift action_24
action_50 (18) = happyShift action_25
action_50 (26) = happyShift action_54
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (9) = happyShift action_16
action_51 (10) = happyShift action_17
action_51 (11) = happyShift action_18
action_51 (12) = happyShift action_19
action_51 (13) = happyShift action_20
action_51 (14) = happyShift action_21
action_51 (15) = happyShift action_22
action_51 (16) = happyShift action_23
action_51 (17) = happyShift action_24
action_51 (18) = happyShift action_25
action_51 (26) = happyShift action_53
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (9) = happyShift action_16
action_52 (10) = happyShift action_17
action_52 (11) = happyShift action_18
action_52 (12) = happyShift action_19
action_52 (13) = happyShift action_20
action_52 (14) = happyShift action_21
action_52 (15) = happyShift action_22
action_52 (16) = happyShift action_23
action_52 (17) = happyShift action_24
action_52 (18) = happyShift action_25
action_52 _ = happyReduce_15

action_53 _ = happyReduce_16

action_54 _ = happyReduce_17

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
happyReduction_14 (HappyTerminal (TokB happy_var_1))
	 =  HappyAbsSyn4
		 (B happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 7 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
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
		 (LetRec happy_var_2 happy_var_4 happy_var_6
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

happyReduce_19 = happyReduce 4 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (App happy_var_2 happy_var_3
	) `HappyStk` happyRest

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
	TokB happy_dollar_dollar -> cont 19;
	TokIf -> cont 20;
	TokThen -> cont 21;
	TokElse -> cont 22;
	TokLet -> cont 23;
	TokLetRec -> cont 24;
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


parseError :: [Token] -> a
parseError _ = error "Parse error"


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
