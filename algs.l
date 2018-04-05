head(/)
T⇒X
@+L1(1000000)
Oi
§1
	*const1(i/L1)
	/'====\ni: '>C *printVal(i,10/) /'\n'>C
	*printBoolVect(L1,i/)
	*weight(L1,i/w)
	/'\nweight: '>C *printVal(w,10/)
	/'\n====\n'>C
	∆i
	↑(i<10)1
**

isMonotonic(L1,n/f)
↑(n<6)1
	In > 5 ⇒ n
	*isMonotonicHelper(L1,0,n/f)
	→2
§1
	/'n must be >= 6\n'>C
§2
	**

isMonotonicHelper(L1,l,h/f)
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

Xgen(n/L1)
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

weight(L1,n/q)
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

const0(n/L1)
In + 31 > 5 ⇒ Q1
OL1
**

const1(n/L1)
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

printBoolVect(L1,n/)
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
