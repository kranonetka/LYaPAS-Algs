head(/)
@+F1(100)
/F1<C
/'\n====\n'>C
Q1>5⇒n Q1&31↪1 ∆n
§1 @+L2(n) n⇒Q2
*s2v(F1/L2)
Oi
§2 *printVal(L2i/) /' '>C ∆i⊕Q2↦2
/'\n====\n'>C
Q1⇒n
@+F3(n)
*v2s(L2,n/F3)
/F3>C /'\n====\n'>C
@-F3
@-L2
@-F1
**

s2v(F1/L2)
***F1 - input string ('0' will be interpreted as 0, other as 1)
***L2 - output vector (capacity must be declared equal or greater than Q1/32 + !isZero(Q1%32))
Oi
§1 F1i⊕'0'↪2 i>5⇒j i&31⇒b L2j∨Ib⇒L2j
§2 ∆i⊕Q1↦1
**

v2s(L1,q/F2)
***L1 - input vector
***q - number of used bits in the vector
***F2 - output string (capacity must be declared equal or greater than q)
Oi
§1 i>5⇒j i&31⇒b L1j&Ib↦2 '0'@>F2 ∆i⊕q↦1 →3
§2 '1'@>F2 ∆i⊕q↦1
§3 **

s2n(F1/a)
Oa Qi
§1 a*10+F1i-'0'⇒a ∆i⊕Q1↦1
**

printVal(a/)
@+F1(10) OQ1
§1 a;10+'0'@>F1.0 a/10⇒a↦1
/F1>C @-F1
**
