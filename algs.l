head(/)
@+F1(256)
/F1<C
Q1>5⇒n Q1&31↪1 ∆n
§1 @+L2(n) n⇒Q2
*s2v(F1/L2)
Q1⇒n OQ1 *v2s(L2,n/F1)
@+F3(256)
/F3<C
Q3>5⇒n Q3&31↪2 ∆n
§2 @+L4(n) n⇒Q4
*s2v(F3/L4)
Q3⇒n OQ3 *v2s(L4,n/F3)
***Q1 - used bits in L2
***Q2 - capacity of L2
***Q3 - user bits in L4
***Q4 - capacity of L4
/'L2: '>C /F1>C
/'\n'>C
/'L4: '>C /F3>C
/'\n======\n'>C
/F1>C
/'\n'>C
/F3>C
/'\n'>C
L2⊕L4⇒L2
Q1⇒n OQ1 *v2s(L2,n/F1)
/F1>C
/' ⊕\n'>C
/F3>C /'\n'>C
L2&L4⇒L4
Q3⇒n OQ3 *v2s(L4,n/F3)
/F3>C /' &\n'>C
/F1>C /'\n'>C
L2∨L4⇒L2
Q1⇒n OQ1 *v2s(L2,n/F1)
/F1>C /' ∨\n'>C
**

***string to vector
s2v(F1/L2)
***F1 - input string ('0' will be interpreted as 0, other as 1)
***L2 - output vector (capacity must be declared equal or greater than Q1/32 + !isZero(Q1%32))
Oi
§1 F1i⊕'0'↪2 i>5⇒j i&31⇒b L2j∨Ib⇒L2j
§2 ∆i ↑(i<Q1)1
**

***vector to string
v2s(L1,q/F2)
***L1 - input vector
***q - number of used bits in the vector
***F2 - output string (capacity must be declared equal or greater than q)
Oi
§1 i>5⇒j i&31⇒b L1j&Ib↦2 '0'@>F2 ∆i ↑(i<q)1 →3
§2 '1'@>F2 ∆i ↑(i<q)1
§3 **

***string to number
s2n(F1/a)
***F1 - input string (must contain only numerals)
***a - output number
Oa Qi
§1 a*10+F1i-'0'⇒a ∆i ↑(i<Q1)1
**

***print value of variable
printVal(a/)
***a - input variable
@+F1(10) OQ1
§1 a;10+'0'@>F1.0 a/10⇒a↦1
/F1>C @-F1
**
