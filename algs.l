head(/)
T⇒X
@+L1(10240)
6⇒n Oi
§1
	Oj Os
	§2
		*Xgen(L1,n/L1)
		*weight(L1,n/q)
		s+q⇒s
		∆j
		↑(j<512)2
	
	s/512⇒s
	/'Averange: '>C *printVal(s/) /'\n'>C
	∆i
	↑(i<10)1
**

Xgen(L1,n/L1)
↑(n<5)2
In>5⇒n Oi
§1
	X>15⇒a X⊕a⇒L1i
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
Oa Qi
§1
	a*10+F1i-'0'⇒a
	∆i
	↑(i<Q1)1
**

***print value of variable
printVal(a/)
***a - input variable
@+F1(10) OQ1
§1
	a;10+'0'@>F1.0
	a/10⇒a↦1
/F1>C **
