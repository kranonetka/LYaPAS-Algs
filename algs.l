head(/)
T⇒X
@+L1(1000000)
@+L2(1000000)
Oi
§1
	*genBF(6/L1)
	
	***revBF(L1,5/L2)
	L1¬ ⇒ L2
	*printBF(L1,6/) /'\n'>C
	*printBF(L2,6/) /'\n====\n'>C
	∆i
	↑(i<10)1
**

***Boolean function self-dual check
isBFSelfdual(L1,n/f)
***L1 - boolean function
***n - the number of args
***f - flag(1/0)
Of ∆f
In + 31 > 5 ⇒ q
q ⊕ 1 ↪3
	q⇒j ∇j
	Oi
	§1
		*reverseBits(L1j/b)
		b¬ ⊕ L1i ↦2
		∆i ∇j
		↑(i<j)1
		→4
	§2
		Of
		→4
§3
	*reverseBits(L1.0/b)
	32 - In ⇒ s
	b¬ > s ⊕ L1.0 ↦2
§4
	**

***Boolean function monotonic check
isBFMonotonic(L1,n/f)
***L1 - boolean function
***n - the number of args
***f - flag(1/0)
↑(n<6)1
	In > 5 ⇒ n
	*isMonotonicHelper(L1,0,n/f)
	→2
§1
	/'n must be >= 6\n'>C
§2
	**

isBFMonotonicHelper(L1,l,h/f)
Of
h > 1 ⇒ m ⇒ j
Oi
§1
	↑(L1i>L1j)3
	∆i ∆j
	↑(j<h)1
	∆f
	h - l ⊕ 1 ↪3
	*isMonotonicHelper(L1,l,m/f)
	f↪3
	*isMonotonicHelper(L1,m,h/f)
	→3
§3
**

isBFEquals(L1,L2,n/f)
***L1 - op1
***L2 - op2
***n - the number of args of L1 and L2
***f - flag(1/0)
Of ∆f
In + 31 > 5 ⇒ n
Oi
§1
	L1i ⊕ L2i ↦2
	∆i
	↑(i<n)1
	→3
§2
	Of
§3
	**

***reverse boolean function
revBF(L1,n/L2)
***L1 - boolean function
***n - the number of args
***L2 - reversed boolean function
OQ2
In + 31 > 5 ⇒ q ⇒ j
	∇j
	§1
		L1j @>L2
		∇j
		↑(j<q)1
q ⊕ 1 ↪3
	Oj
	§2
		*reverseBits(L2j/b)
		b ⇒ L2j
		∆j
		↑(j<Q2)2
		→4	
§3
	32 - In ⇒ s
	*reverseBits(L2.0/b)
	b > s ⇒ L2.0
§4
	**

reverseBits(a/b)
***a - vector to reverse
***b - reversed vector
	a > 1 & 55555555h ⇒ v
	a & 55555555h < 1 ∨ v ⇒ b
b > 2 & 33333333h ⇒ v
b & 33333333h < 2 ∨ v ⇒ b
	b > 4 & 0f0f0f0fh ⇒ v
	b & 0f0f0f0fh < 4 ∨ v ⇒ b
b > 8 & 00ff00ffh ⇒ v
b & 00ff00ffh < 8 ∨ v ⇒ b
	b > 16 ⇒ v
	b < 16 ∨ v ⇒ b
**

***generate random boolean function
genBF(n/L1)
***n - the number of args
***L1 - generated boolean function
OQ1
↑(n<5)2
In > 5 ⇒ n
§1
	X > 16 ⇒ a
	X ⊕ a @>L1
	↑(Q1<n)1
	→3
§2
	32 - In ⇒ n
	X > n @>L1
§3
	**

***Calculate weight of boolean function
BFweight(L1,n/q)
***L1 - boolean function
***n - the number of args
***q - weight of boolean function
Oq
↑(n<5)2
In > 5 ⇒ n
Oi
§1
	L1i % + q ⇒ q
	∆i
	↑(i<n)1
	→3
§2
	32 - In ⇒ n
	L1.0 < n % ⇒ q
§3
	**

***generate const 0 boolean function
BFconst0(n/L1)
***n - the number of args
***L1 - const0 boolean function
In + 31 > 5 ⇒ Q1
OL1
**

***generate const 1 boolean function
BFconst1(n/L1)
***n - the number of args
***L1 - const1 boolean function
In + 31 > 5 ⇒ Q1
⁻L1
Q1 ⊕ 1 ↦1 ***↑(Q1≠1)1
	32 - In ⇒ n
	L1.0 > n ⇒ L1.0
§1
**

***string to number
s2n(F1/a)
***F1 - input string (must contain only numerals)
***a - output number
Oa Oi
§1
	a*10+F1i-'0'⇒a
	∆i
	↑(i<Q1)1
**

***print vector of values of boolean function
printBF(L1,n/)
***L1 - boolean function
***n - the number of args
In + 31 > 5 ⇒ n ⇒ i
∇i
§1
	*printBool(L1i/)
	∇i
	↑(i<n)1
**

***Print boolean vector of 32bit variable
printBool(a/)
***a - variable
@+F1(32) OQ1
§1
	a & 1 + '0'@>F1.0
	a > 1 ⇒ a
	a↦1
↑(Q1=32)3
§2
	'0'@>F1.0
	↑(Q1<32)2
§3 /F1>C
**

***Print value of variable
printVal(a,b/)
***a - variable
***b - base
@+F1(10) OQ1
§1
	a;b+'0'⇒c
	↑(c<':')2
		c+'a'-'9'⇒c
	§2
	c@>F1.0
	a/b⇒a↦1
/F1>C
**
