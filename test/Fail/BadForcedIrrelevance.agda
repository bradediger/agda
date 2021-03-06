
open import Agda.Builtin.Nat

data V : (n : Nat) → Set where
  cons : (n : Nat) → V (suc n)
       -- ^ this n is forced

    -- v and this n is marked shape irrelevant
g : ..(n : Nat) → V n → Nat
g _ (cons n) = n
--             ^ so we can't return n here, since we're really
--               returning the shape irrelevant one.
