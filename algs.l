head(/)
@+F1(1024) OQ1
/F1<C
/F1>C
*s2n(F1/a)
*printVal_32(a/)
**

s2n(F1/a)
Oa Q1⇒j
§1 ∇j a*10+F1j-'0'⇒a j↦1
**

printVal_32(a/)
@+F1(10) OQ1
§1 a;10+'0'@>F1.0 a/10⇒a↦1
/F1>C @-F1
**

***F1 - input string (must contain  only 1s and 0s)
***L2 - output vector
s2v(F1/L2)
Q1>5⇒n Q1&31↪1 ∆n
§1 @+L2(n) n⇒Q2 Oi
§2 ↑(F1i≠'0')3 ∆i ↑(i<Q1)2 →4
§3 i>5⇒j i&31⇒n 31-n⇒n 1<n⊕L1j⇒L1j ∆i ↑(i<Q1)2
§4 /'s2v DONE\n'>C **

***L1 - input vector
***n - active bits in input vector
***F2 - output string
v2s(L1,n/F2)
/'v2s STARTS\n'>C
@+F2(n) OQ2
Oi Oj
§1 31-j⇒k 1<k&L1i↦2 '0'@>F2 ∆j ↑(j<32)1 →3
§2 '1'@>F2 ∆j ↑(j<32)1
§3 Oj ∆i ↑(i<Q1)1
n>5⇒r↪6 ∇i
§4 31-j⇒k 1<k&L1i↦5 '0'@>F2 ∆j ↑(j<r)4 →6
§5 '1'@>F2 ∆j ↑(j<r)4
§6 /'v2s DONE\n'>C **
