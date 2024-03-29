module Arithmetic where

open import BuiltIn
open import List

-- Properties of 0 and 1
0not1 : 0 ≡ 1 → ⊥
0not1 ()

1not0 : 1 ≡ 0 → ⊥
1not0 ()

sucNot0 : (n : Nat) → suc n ≡ 0 → ⊥
sucNot0 n ()

+2 : Nat → Nat
+2 = suc ∘ suc

+1= : (b : Nat) → suc b ≡ (b + 1)
+1= 0       = refl
+1= (suc b) = sym
  (begin
    suc b + 1
  =⟨⟩
    suc (b + 1)
  =⟨ cong suc (sym (+1= b)) ⟩
    suc (suc b)
  ∎)

+0= : (b : Nat) → b ≡ (b + 0)
+0= 0       = refl
+0= (suc b) = cong suc (+0= b)

*1=1 : (a : Nat) → a ≡ (a * 1)
*1=1 0 = refl
*1=1 (suc a) = sym
  (begin
    (suc a) * 1
  =⟨⟩
    (a * 1) + 1
  =⟨ sym (+1= (a * 1)) ⟩
   suc (a * 1)
  =⟨ cong suc (sym (*1=1 a)) ⟩
    suc a
  ∎)

*1= : (b : Nat) → b ≡ (b * 1)
*1= = *1=1

n*0=0 : (n : Nat) → (n * 0) ≡ 0
n*0=0  0       = refl
n*0=0  (suc n) = cong (_+ 0) $ n*0=0 n

-- +
suc+=+suc : (a b : Nat) → suc (a + b) ≡ (a + (suc b))
suc+=+suc 0       b = refl
suc+=+suc (suc a) b = cong suc (suc+=+suc a b)

comm+ : (a b : Nat) → (a + b) ≡ (b + a)
comm+ 0         = +0=
comm+ (suc a) b = trans (cong suc $ comm+ a b) $ suc+=+suc b a

dist+ : (a b c : Nat) → a + (b + c) ≡ (a + b) + c
dist+ 0 b c = refl
dist+ (suc a) b c =
  begin
    (suc a + (b + c))
  =⟨⟩
    (suc (a + (b + c)))
  =⟨ cong suc (dist+ a b c) ⟩
    (suc ((a + b) + c))
  =⟨⟩
    refl

assoc+ : (a b c : Nat) → a + (b + c) ≡ (a + b) + c
assoc+ a 0 c =
  begin
    a + (0 + c)
  =⟨⟩
    a + c
  =⟨ cong (_+ c) (+0= a)⟩
    (a + 0) + c
  ∎
assoc+ a (suc b) c =
  begin
    a + (suc b + c)
  =⟨⟩
    a + suc (b + c)
  =⟨ sym ( suc+=+suc a (b + c)) ⟩
    suc (a + (b + c))
  =⟨ cong suc (assoc+ a b c) ⟩
    suc ((a + b) + c)
  =⟨⟩
    suc (a + b) + c
  =⟨ cong (_+ c) (suc+=+suc a b) ⟩
    (a + suc b) + c
  ∎

assoc-flip : (a b c : Nat) → a + (b + c) ≡ b + (a + c)
assoc-flip a b c =
  (trans (assoc+ a b c)
    (trans (cong (_+ c) (comm+ a b))
      (sym (assoc+ b a c))))

-- *
suc-help : (a b : Nat) → b + (a * b) ≡ (suc a) * b
suc-help a b = sym
  (begin
    (suc a) * b
  =⟨⟩
    (a * b) + b
  =⟨ comm+ (a * b) b ⟩ 
    b + (a * b)
  ∎)

suc-rev : (a b : Nat) → suc (a + b) ≡ (suc a) + b
suc-rev a b = sym
  (begin
    (suc a) + b
  =⟨⟩
    suc (a + b)
  ∎)

*suc=+* : (a b : Nat) → a + (a * b) ≡ a * (suc b)
*suc=+* 0  b      = refl
*suc=+* (suc a) b = sym
  (begin
    suc a * suc b
  =⟨⟩
    (a * suc b) + (suc b)
  =⟨ comm+ (a * suc b) (suc b) ⟩
    suc b + (a * suc b)
  =⟨⟩
    suc (b + (a * suc b))
  =⟨ cong (λ x → suc (b + x)) (sym (*suc=+* a b)) ⟩
    suc (b + (a + (a * b)))
  =⟨ cong suc (assoc-flip b a (a * b)) ⟩
    suc (a + (b + (a * b)))
  =⟨ suc-rev a (b + (a * b)) ⟩
    suc a + (b + (a * b))
  =⟨ cong (λ x → (suc a + x)) (suc-help a b) ⟩
    suc a + (suc a * b)
  ∎)

comm* : (a b : Nat) → a * b ≡ b * a
comm* 0 b = 
  begin
    0 * b
  =⟨⟩
    0
  =⟨ sym $ n*0=0 b ⟩
    b * 0
  ∎
comm* (suc a) b =
  begin
    (suc a) * b
  =⟨⟩
    (a * b) + b
  =⟨ cong (_+ b) (comm* a b) ⟩
    (b * a) + b
  =⟨ comm+ (b * a) b ⟩
    b + (b * a)
  =⟨ *suc=+* b a ⟩
    b * (suc a)
  ∎

distr+* : (a b c : Nat) → (a + b) * c ≡ (a * c) + (b * c)
distr+* 0 b c = refl
distr+* (suc a) b c =
  begin
    (suc a + b) * c
  =⟨⟩
    suc ( a + b) * c
  =⟨⟩
    (( a + b) * c) + c
  =⟨ cong (_+ c) (distr+* a b c) ⟩
    ((a * c) + (b * c)) + c
  =⟨ comm+ ((a * c) + (b * c)) c ⟩
    c + ((a * c) + (b * c))
  =⟨ assoc+ c (a * c) (b * c)  ⟩
    (c + (a * c)) + (b * c)
  =⟨ cong (_+ (b * c)) (suc-help a c) ⟩
    (suc a * c) + (b * c)
  ∎

distr*+ : (a b c : Nat) → a * (b + c) ≡ (a * b) + (a * c)
distr*+ a b c =
  trans
    (comm* a (b + c))
    (trans
      (distr+* b c a)
      (trans
        (cong (_+ (c * a)) (comm* b a))
        (cong ((a * b) +_) (comm* c a))))

assoc* : (a b c : Nat) → a * (b * c) ≡ (a * b) * c
assoc* 0 b c = refl
assoc* (suc a) b c = 
  begin
    suc a * (b * c)
  =⟨⟩
    (a * (b * c)) + (b * c)
  =⟨ cong (_+ (b * c)) (assoc* a b c) ⟩
    ((a * b) * c) + (b * c)
  =⟨ sym ( distr+*  (a * b) b c ) ⟩
    ((a * b) + b) * c
  =⟨ cong (_* c) (comm+ (a * b) b) ⟩
    (b + (a * b)) * c
  =⟨ cong (_* c) (suc-help a b) ⟩
    (suc a * b) * c
  ∎

-- Dividing
AllDivide0 : (a : Nat) → a div 0
AllDivide0 a = 0 , n*0=0 a

only0Divides0 : (a : Nat) → 0 div a → a ≡ 0
only0Divides0 a 0|a = sym (cdr 0|a)

divTrans : (a b c : Nat) → (a div b) → (b div c) → (a div c)
divTrans a b c a|b b|c = k * j , eq
  where
    k = car a|b
    a*k=b = cdr a|b
    j = car b|c
    b*j=c = cdr b|c
    eq =
      begin
        a * (k * j)
      =⟨ assoc* a k j ⟩
        (a * k) * j
      =⟨ cong (_* j) a*k=b ⟩
        b * j
      =⟨ b*j=c ⟩
        c
      ∎

eqAlso≤ : (a b c : Nat) → (a ≤ b) × (b ≡ c) → a ≤ c
eqAlso≤ a b c (a≤b , b=c) = replace b=c (a ≤_) a≤b

eqAlso≥ : (a b c : Nat) → (a ≤ b) × (a ≡ c) → c ≤ b
eqAlso≥ a b c (a≤b , a=c) = replace a=c (_≤ b) a≤b

times0is0 : (a c : Nat) → c ≡ 0 → a * c ≡ 0
times0is0 a c c=0 = trans (cong (a *_) c=0) $ n*0=0 a

≤and≥then= : (a b : Nat) → (a ≤ b) × (b ≤ a) → a ≡ b
≤and≥then= 0 0 _ = refl
≤and≥then= 0 (suc b) (0≤Sb , Sb≤0) = absurd $ 0!=Sn (b + k) (sym Sb+k=0)
  where
    diff = difference Sb≤0
    k = car diff
    Sb+k=0 = cdr diff
≤and≥then= (suc a) 0 (Sa≤0 , 0≤Sa) = sym $ ≤and≥then= 0 (suc a) (0≤Sa , Sa≤0)
≤and≥then= (suc a) (suc b) (s≤s a b a≤b , s≤s b a b≤a) = cong suc $ ≤and≥then= a b (a≤b , b≤a)

Sa=Sb->a=b : (a b : Nat) → (suc a) ≡ (suc b) → a ≡ b
Sa=Sb->a=b a b sa=sb = cong sub1 sa=sb

a≤b->Sa≤Sb : (a b : Nat) → a ≤ b → (suc a) ≤ (suc b)
a≤b->Sa≤Sb 0 b (z≤n b) = s≤s 0 b (z≤n b)
a≤b->Sa≤Sb (suc m) (suc n) (s≤s m n a≤b) = s≤s (suc m) (suc n) (s≤s m n a≤b)

≤Trans : (a b c : Nat) → a ≤ b → b ≤ c → a ≤ c
≤Trans zero b c (z≤n b) b≤c = z≤n c
≤Trans (suc m) (suc n) (suc c) (s≤s m n m≤n) (s≤s n c n≤c) = s≤s m c (≤Trans m n c m≤n n≤c)

≤Switch : (a b c d : Nat) → a ≡ b → c ≡ d → a ≤ c → b ≤ d
≤Switch a b c d a=b c=d a≤c = replace c=d (b ≤_) (replace a=b (_≤ c) a≤c)

≤+ : (a b c : Nat) → a ≤ b → (a + c) ≤ (b + c)
≤+ a b 0 a≤b =
  ≤Switch
    a (a + 0) b (b + 0)
    (+0= a)
    (+0= b)
    a≤b
≤+ a b (suc c) a≤b =
  ≤Switch
    (suc (a + c)) (a + (suc c)) (suc (b + c)) (b + (suc c))
    (suc+=+suc a c)
    (suc+=+suc b c)
    (s≤s (a + c) (b + c) (≤+ a b c a≤b))

≤Product-help : (a b : Nat) → (b ≡ 0 → ⊥) → suc (a * b) ≤ (suc a * b)
≤Product-help a 0 b!=0 = (absurd (b!=0 refl))
≤Product-help 0 (suc b) b!=0 =
  ≤Trans
    (suc (zero * (suc b))) 1 (1 * (suc b)) -- a, b, c
    (s≤s 0 0 (z≤n 0)) -- a ≤ b
    (s≤s 0 (1 * b) (z≤n (1 * b))) -- b ≤ c
≤Product-help (suc a) (suc b) b!=0 = ≤Switch (1 + ((suc a) * (suc b)))
                                             (1 + ((suc a) * (suc b)))
                                             ((suc b) +  ((suc a) * (suc b)))
                                             (((suc a) * (suc b)) + (suc b))
                                             refl
                                             (comm+ (suc b)  ((suc a) * (suc b)))
                                             (≤+ 1 (suc b) ((suc a) * (suc b)) (s≤s 0 b (z≤n b)))

≤Product : (a b c : Nat) → (c ≡ 0 → ⊥) × (a ≡ b) → a ≤ (b * c)
≤Product a b 0 (c!=0 , a=b) = (absurd (c!=0 refl))
≤Product 0 0 c (c!=0 , a=b) = z≤n (0 * c)
≤Product (suc a) (suc b) c (c!=0 , Sa=Sb) =
  ≤Trans
    (suc a) (suc (b * c)) ((suc b) * c) 
    (a≤b->Sa≤Sb a (b * c) (≤Product a b c (c!=0 , (Sa=Sb->a=b a b Sa=Sb))))
    (≤Product-help b c c!=0)

-- aInRangeB
rangeUpTo : Nat → Nat → List Nat
rangeUpTo m zero = []
rangeUpTo m (suc num) = (m + (suc num)) :: rangeUpTo m num

aInRangeBHelp3 : (m n x : Nat) → suc (m + x) ≡ n → range n ≡ concat (rangeUpTo (suc m) x) (suc m :: range m)
aInRangeBHelp3 m n zero sm+x=n =
  begin
    range n
  =⟨ cong (λ x → range x) (sym sm+x=n) ⟩
    range (suc (m + zero))
  =⟨⟩
    (suc (m + zero)) :: range (m + zero)
  =⟨ cong (λ x → (suc x) :: range x) (sym (+0= m)) ⟩
    suc m :: range m
  =⟨⟩
    refl
aInRangeBHelp3 m n (suc x) sm+x=n =
  begin
    range n
  =⟨ cong (λ x → range x) (sym sm+x=n) ⟩
    range (suc (m + suc x))
  =⟨⟩
   (suc (m + suc x)) :: range (m + suc x)
  =⟨ cong ((suc (m + suc x)) ::_) (aInRangeBHelp3 m (m + suc x) x (suc+=+suc m x)) ⟩
    suc (m + suc x) :: concat (rangeUpTo (suc m) x) (suc m :: range m)
 =⟨⟩
    refl

aInRangeBHelp2 : (b : Nat) → range b ≡ concat (rangeUpTo 0 b) (zero :: [])
aInRangeBHelp2 zero = refl
aInRangeBHelp2 (suc b) =
  begin
    range (suc b)
  =⟨⟩
    suc b :: range b
  =⟨ cong (suc b ::_) (aInRangeBHelp2 b) ⟩
    suc b :: concat (rangeUpTo 0 b) (zero :: [])
  =⟨⟩
    0 + (suc b)  :: concat (rangeUpTo 0 b) (zero :: [])
  =⟨⟩
    refl

aInRangeBHelp1 : (a b : Nat) → Σ Nat (λ k → a + k ≡ b) → isIn Nat a (range b)
aInRangeBHelp1 zero n (x , x₁) = (rangeUpTo 0 n , ([] , aInRangeBHelp2 n))
aInRangeBHelp1 (suc m) n (x , x₁) = (rangeUpTo (suc m) x , (range m , aInRangeBHelp3 m n x x₁))

aInRangeB : (a b : Nat) → a ≤ b → isIn Nat a (range b)
aInRangeB a b a≤b = aInRangeBHelp1 a b (difference a≤b)

only≤Divides : (a b : Nat) → (b ≡ 0 → ⊥) → (a ≡ b → ⊥) × (b ≤ a) → a div b → ⊥
only≤Divides a b b!=0 (a!=b , b≤a) a|b = a!=b $ ≤and≥then= a b (a≤b , b≤a)
  where
    k = car a|b
    ak=b = cdr a|b
    k!=0 = λ k=0 → b!=0 $ trans (sym ak=b) (trans (cong (a *_) k=0) (n*0=0 a))
    a≤ak = ≤Product a a k (k!=0 , refl)
    a≤b = eqAlso≤ a (a * k) b (a≤ak , ak=b)

a≤Sa : (a : Nat) → a ≤ suc a
a≤Sa 0 = z≤n 1
a≤Sa (suc a) = s≤s a (suc a) (a≤Sa a)

aDiv1=>a=1 : (a : Nat) → (a div 1) → (a ≡ 1)
aDiv1=>a=1 0 0|1 = absurd $ 0not1 (sym $ only0Divides0 1 0|1)
aDiv1=>a=1 1 1|1 = refl
aDiv1=>a=1 (suc (suc a)) SSa|1 = absurd $ only≤Divides (suc (suc a)) 1 1not0 (SSa!=1 , 1≤SSa) SSa|1
  where
    SSa!=1 = λ SSa=1 → Sn!=0 a (cong sub1 SSa=1)
    1≤SSa = ≤Trans 1 (suc a) (suc (suc a)) (s≤s 0 a (z≤n a)) (a≤Sa (suc a))

≤Dec : (a b : Nat) → Either (a ≤ b) (b ≤ a)
≤Dec 0       b       = left (z≤n b)
≤Dec a       0       = right (z≤n a)
≤Dec (suc a) (suc b) = cases (≤Dec a b) (left ∘ s≤s a b) (right ∘ s≤s b a)

1not≤0 : 1 ≤ 0 → ⊥
1not≤0 ()

a≤0=>a=0 : (a : Nat) → a ≤ 0 → a ≡ 0
a≤0=>a=0 0 _ = refl
a≤0=>a=0 (suc a) Sa≤0 = absurd $ 1not≤0 (eqAlso≥ (suc a) 0 1 (Sa≤0 , (cong suc a=0)))
  where
    a≤0 = ≤Trans a (suc a) 0 (a≤Sa a) Sa≤0
    a=0 = a≤0=>a=0 a a≤0

a≤Sb&a!=Sb=>a≤b : (a b : Nat) → a ≤ (suc b) → (a ≡ (suc b) → ⊥) → a ≤ b
a≤Sb&a!=Sb=>a≤b 0 b 0≤Sb 0!=Sb = z≤n b
a≤Sb&a!=Sb=>a≤b (suc a) 0 Sa≤1 Sa!=1 = absurd $ Sa!=1 (≤and≥then= (suc a) 1 (Sa≤1 , s≤s 0 a (z≤n a)))
a≤Sb&a!=Sb=>a≤b (suc a) (suc b) (s≤s a (suc b) a≤Sb) Sa!=SSb = a≤b->Sa≤Sb a b (a≤Sb&a!=Sb=>a≤b a b a≤Sb a!=Sb)
  where
    a!=Sb = λ a=Sb → Sa!=SSb (cong suc a=Sb)

!0≥1 : (n : Nat) → (n ≡ 0 → ⊥) → 1 ≤ n
!0≥1 0 n!=0 = absurd $ n!=0 refl
!0≥1 (suc n) Sn!=0 = s≤s 0 n (z≤n n)

≥1!0 : (n : Nat) → 1 ≤ n → n ≡ 0 → ⊥
≥1!0 0 1≤n n=0 = 1not≤0 1≤n
≥1!0 (suc n) 1≤Sn Sn=0 = sucNot0 n Sn=0

a*b!=0 : (a b : Nat) → (a ≡ 0 → ⊥) × (b ≡ 0 → ⊥) → a * b ≡ 0 → ⊥
a*b!=0 0 b (a!=0 , b!=0) = absurd $ a!=0 refl
a*b!=0 (suc a) b (Sa!=0 , b!=0) Sa*b=0 = cases (natDec a 0)
                                         (λ a=0 → b!=0 $ sym (trans (sym Sa*b=0) (cong (λ k → (suc k) * b) a=0)))
                                         (λ a!=0 → let
                                                   a*b = a * b
                                                   1≤a*b = !0≥1 a*b (a*b!=0 a b (a!=0 , b!=0))
                                                   Sa*b = (suc a) * b
                                                   a*b≤Sa*b = ≤Switch (0 + a*b) a*b (b + a*b) Sa*b
                                                              (trans (comm+ 0 a*b) (sym (+0= a*b)))
                                                              (suc-help a b) (≤+ 0 b a*b (z≤n b))
                                                   1≤Sa*b = ≤Trans 1 a*b Sa*b 1≤a*b a*b≤Sa*b
                                                   in (≥1!0 Sa*b 1≤Sa*b) Sa*b=0)

-- Monus
c-c=0 : (c : Nat) → (c - c) ≡ 0
c-c=0 0 = refl
c-c=0 (suc c) =
  begin
    (suc c - (suc c))
  =⟨⟩
    (c - c)
  =⟨ (c-c=0 c) ⟩
    0
  ∎

a+c-c=a : (a c : Nat) → (a + c) - c ≡ a
a+c-c=a a 0 =
  begin
    (a + 0) - 0
  =⟨ cong (_- 0) (sym (+0= a)) ⟩
    a - 0
  =⟨⟩
    a
  ∎
a+c-c=a a (suc c) =
  begin
    (a + suc c) - (suc c)
  =⟨ cong (_- (suc c)) (comm+ a (suc c)) ⟩
    (suc c + a) - (suc c)
  =⟨⟩
    suc (c + a) - (suc c)
  =⟨ cong (λ x → suc x - (suc c)) (comm+ c a) ⟩
    suc (a + c) - (suc c)
  =⟨⟩
    (a + c) - c
  =⟨ a+c-c=a a c ⟩
    a
  ∎

-- WTF
-0=0 : (a : Nat) → 0 ≡ (0 - a)
-0=0 0 = refl
-0=0 (suc a) = refl

neg-distr : (a b c : Nat) → a - (b + c) ≡ (a - b) - c
neg-distr 0 0 c = refl
neg-distr (suc a) 0 c = refl
neg-distr 0 (suc b) c =
  begin
    zero - (suc b + c)
  =⟨⟩
    zero - suc (b + c)
  =⟨⟩
    zero
  =⟨ -0=0 c ⟩
    0 - c
  =⟨ cong (_- c) (-0=0 (suc b)) ⟩
    (0 - suc b) - c
  ∎
neg-distr (suc a) (suc b) c =
  begin
    suc a - (suc b + c)
  =⟨⟩
    (suc a) - (suc (b + c))
  =⟨⟩
    a - (b + c)
  =⟨ neg-distr a b c ⟩
    (a - b) - c
  ∎

sca-sba : (a b c : Nat) → (b + a) - (c + a) ≡ b - c
sca-sba a 0 0 =
  begin
    (zero + a) - (zero + a)
  =⟨⟩
    a - a
  =⟨ c-c=0 a ⟩
    0
  ∎
sca-sba a (suc b) 0 =
  begin
    (suc b + a) - (zero + a)
  =⟨⟩
    (suc b + a) - a
  =⟨ a+c-c=a (suc b) a ⟩
    suc b
  ∎
sca-sba a 0 (suc c) =
  begin
    (0 + a) - (suc c + a)
  =⟨ cong ((0 + a) -_) (comm+ (suc c) a) ⟩
    (0 + a) - (a + suc c)
  =⟨⟩
    a - (a + suc c)
  =⟨ neg-distr a a (suc c) ⟩
    (a - a) - (suc c)
  =⟨ cong (_- (suc c)) (c-c=0 a) ⟩
    0 - (suc c)
  =⟨⟩
    0
  ∎
sca-sba a (suc b) (suc c) =
  begin
    (suc b + a) - (suc c + a)
  =⟨⟩
    suc (b + a) - suc (c + a)
  =⟨⟩
    (b + a) - (c + a)
  =⟨ sca-sba a b c ⟩
    (b - c)
  ∎

-- Misc.
a*c-a*b=a*c-b : (a b c : Nat) → (a * c) - (a * b) ≡ (a * (c - b))
a*c-a*b=a*c-b a 0 0 =
  begin
    (a * zero) - (a * zero)
  =⟨ c-c=0 (a * 0) ⟩
    0
  =⟨ sym $ n*0=0 a ⟩
    a * 0
  ∎
a*c-a*b=a*c-b a (suc b) 0 =
  begin
    (a * 0) - (a * (suc b))
  =⟨ cong (_- (a * (suc b))) (n*0=0 a) ⟩
    0 - (a * (suc b))
  =⟨ sym (-0=0 (a * (suc b))) ⟩
    0
  =⟨ sym $ n*0=0 a ⟩
    a * 0
  =⟨ cong (a *_) (-0=0 (suc b)) ⟩
    a * (zero - suc b)
  ∎
a*c-a*b=a*c-b a 0 (suc c) =
  begin
    (a * suc c) - (a * zero)
  =⟨ cong ((a * (suc c)) -_)  (n*0=0 a) ⟩
    (a * (suc c)) - 0
  =⟨⟩
    a * (suc c)
  ∎
a*c-a*b=a*c-b a (suc b) (suc c) =
 begin
    (a * suc c) - (a * suc b)
  =⟨ cong ((a * suc c) -_) (comm* a (suc b)) ⟩
    (a * suc c) -  (suc b * a)
  =⟨ cong (_- (suc b * a)) (comm* a (suc c)) ⟩
    (suc c * a) - (suc b * a)
  =⟨⟩
    ((c * a) + a) - ((b * a) + a)
  =⟨ sca-sba a (c * a) (b * a) ⟩
    (c * a) - (b * a)
  =⟨ cong ((c * a) -_) (comm* b a) ⟩
    (c * a) - (a * b)
  =⟨ cong (_- (a * b) ) (comm* c a) ⟩
    (a * c) - (a * b)
  =⟨ a*c-a*b=a*c-b a b c ⟩
    a * (c - b)
  ∎