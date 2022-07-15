/*
*
      ARITHMETIC
#########################
# Operator | Meaning    #
#########################
# -expr    | Unary minus, negation
# ~/       | Divide returning an int
#
#
#########################
*
      Type Test
#########################
# Operator | Meaning    #
#########################
# as       | Typrcast
# is       | True if object has the specified type
# is!      |
########################
*
      Bitwise && Shift operators
#########################
# Operator | Meaning    #
#########################
# ~        | Unary bitwise compliment
# ^        | XOR
# >>>      | Unsigned shift right
##########################
*
      Assignment
#########################
# Operator | Meaning    #
#########################
# ??=      | Assign only if first operand is not null 
#########################

Ternary operator(s)
condition ? expr1 : expr2
expr1 ?? expr2  -> check if expr1 is not null if not return value from expr1

Cascade notation
Allows one to make a sequence of operations on the sameobject
# you can’t construct a cascade on void
*/
import 'dart:ffi';

void main(List<String> args) {
  print(1 is int);
}