head(/)
T⇒X
Oi
§1
	X⇒a
	/'a:	'>C *printBool(a/) /'\n'>C
	*reverseBits(a/b)
	/'b:	'>C *printBool(b/) /'\n========\n'>C
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

Xgen(L1,n/L1)
↑(n<5)2
In>5⇒n Oi
§1
	X>16⇒a X⊕a⇒L1i
	∆i
	↑(i<n)1
n⇒Q1
→3

§2 31-In⇒n X>15⇒a X⊕a<n>n⇒L1.0 OQ1 ∆Q1
§3 **

weight(L1,n/q)
Oq ↑(n<5)2
In>5⇒n Oi
§1
	L1i%+q⇒q
	∆i
	↑(i<n)1
→3

§2	31-In⇒n L1.0<n % ⇒q
§3 **

const0(L1,n/L1)
OL1 ↑(n<5)1
OQ1 ∆Q1 →2
§1 In>5⇒Q1
§2 **

const1(L1,n/L1)
OL1 ↑(n<5)2
In>5⇒n Oi
§1
	⁻L1i
	∆i
	↑(i<n)1
n⇒Q1
→3

§2 32-In⇒n ⁻b b<n>n⇒L1.0 OQ1 ∆Q1
§3 **

***string to vector
s2v(F1/L2)
***F1 - input string
***L2 - output vector
Q1%⇒q ↑(q=1)1 /'ERROR: STRING CONTAINS UNCORRENT COUNT OF BITS\n'>C →3
Oi
§1
	F1i⊕'0'↪2
	i>5⇒j	
	i&31⇒b
	L2j∨Ib⇒L2j
§2
	∆i
	↑(i<Q1)1
§3 j+1⇒Q2 **

***vector to string
v2s(L1,n/F2)
***L1 - input vector
***n - count of variables
***F2 - output string (capacity must be declared equal or greater than q)
OQ2 In⇒i Oi
§1
	i>5⇒j
	i&31⇒b
	L1j&Ib↦2
	'0'@>F2
	∆i
	↑(i<q)1
→3

§2
	'1'@>F2
	∆i
	↑(i<q)1
§3 **

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
