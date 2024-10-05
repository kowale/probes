-- https://docs.lean-lang.org/lean4/doc/examples/palindromes.lean.html

inductive Pal : List α -> Prop where
  | nil : Pal []
  | single : (a : α) -> Pal [a]
  | sandwitch : (a : α) -> Pal middle -> Pal ([a] ++ middle ++ [a])

theorem pal_rev (h : Pal m) : Pal m.reverse := by
  induction h with
  | nil => exact Pal.nil
  | single a => exact Pal.single a
  | sandwitch a h ih => simp; exact Pal.sandwitch _ ih

#check pal_rev

