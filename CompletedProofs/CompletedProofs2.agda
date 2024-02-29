module CompletedProofs2 where

open import BuiltIn

cong' : {A B : Set} {x y : A} → (f : A → B) → x ≡ y → f x ≡ f y
cong' f refl = refl

trans' : {A : Set} {x y z : A} → x ≡ y → y ≡ z → x ≡ z
trans' refl refl = refl

sym' : {A : Set} {x y : A} → x ≡ y → y ≡ x
sym' refl = refl