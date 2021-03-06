head(/)
T⇒X
{
	mov eax,[ebp+1432]	;arg 1
	mov eax,[eax]
	and eax,0xff
	sub al,'0'
	mov [ebp+64],eax
}
*** p - parameter
/'Param is '>C *printVal(p,10/) /'\n'>C
@+L1(67108864)
@+L2(67108864)
Ip + 31 > 5 ⇒ Q1
OL1
Oi
§1
	*isBFLinear(L1,p/f)
	∆i
	↑(i<100)1
**

copyBF(L1,n/L2)
In + 31 > 5 ⇒ Q2
Oi
§1
	L1i ⇒ L2i
	∆i
	↑(i<Q2)1
**

***Проверка булевой функции на линейность
isBFLinear(L1,n/f)
Of
S1 ⇒ s
@+L2(s)
*MobiusBF(L1,n/L2)
L2.0 & FFFFFFFEh ⇒ L2.0	***Зануляем бит, соответствующий набору аргументов из нулей
Oi
§1	***цикл зануления битов, соответствующих наборам аргументов с одной единицей
	Ii > 5 ⇒ k	***Находим индекс нужного элемента
	Ii & 31 ⇒ s	***Находим номер нужного бита
	Is ¬ & L2k ⇒ L2k	***Зануляем нужный бит
	∆i
	↑(i<n)1
In + 31 > 5 ⇒ q
Oi
§2
	L2i % ↦3	***(w(L2i)≠0)3 (f=0)
	∆i
	↑(i<q)2
	∆f
§3
	**

***Преобразование Мёбиуса булевой функции
MobiusBF(L1,n/L2)
***L1 - булева функция
***n - количество аргументов булевой функции L1
***L2 - преобразование Мёбиуса булевой функции L1
copyBF(L1,n/L2)
In + 31 > 5 ⇒ q ⇒ Q2	***Считаем, сколько элементов в L1
*MobiusBFHelper(L2,0,Q2/L2)
q ⊕ 1 ↪2
Oi
§1	***Выполняем преобразование Мёбиуса для каждого элемента L2
	L2i < 1 & AAAAAAAAh ⊕ L2i ⇒ L2i
	L2i < 2 & CCCCCCCCh ⊕ L2i ⇒ L2i
	L2i < 4 & F0F0F0F0h ⊕ L2i ⇒ L2i
	L2i < 8 & FF00FF00h ⊕ L2i ⇒ L2i
	L2i < 16 ⊕ L2i ⇒ L2i
	∆i
	↑(i<q)1
	→3
§2
	32 - In ⇒ n
	L2.0 < n > n ⇒ L2.0
§3
	**

***Рекурсивная функция для выполнения преобразование Мёбиуса
MobiusBFHelper(L1,l,h/L1)
***L1 - булева функция
***l - начальный индекс для преобразования
***h - конечный индекс для преобразования
***Преобразования выполняется для [l,h) элементов
h - l > 1 ↪2 + l ⇒ j ⇒ m	***Проверяем условие выхода и находим индекс середины L1
l ⇒ i
§1
	L1i ⊕ L1j ⇒ L1j
	∆i ∆j
	↑(j<h)1
	*MobiusBFHelper(L1,l,m/L1)
	*MobiusBFHelper(L1,m,h/L1)
§2
	**

isBFT1(L1,n/f)
Of
In + 31 > 5 ⇒ i	***Индекс элемента комплекса
In - 1 & 31 ⇒ j	***Номер бита
L1i & Ij ↪1
	∆f
§1
	**

***Boolean function belongs T0 check
isBFT0(L1,n/f)
***L1 - boolean function
***n - the number of args
***f - flag(1/0)
L1.0 & 1 ⊕ 1 ⇒ f
**

***Boolean function self-dual check
isBFSelfdual(L1,n/f)
***L1 - boolean function
***n - the number of args
***f - flag(1/0)
Of ∆f
In + 31 > 5 ⇒ q
q ⊕ 1 ↪3	***↑(q=1)3
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
In + 31 > 5 ⇒ n
Oi Of
§1
	L1i < 1 & AAAAAAAAh ⇒ a
	a & L1i ⊕ a ↦2	***Проверяем на монотонность на наборах, соседних по пятой компоненте
	L1i < 2 & CCCCCCCCh ⇒ a
	a & L1i ⊕ a ↦2	***Проверяем на монотонность на наборах, соседних по четвёртой компоненте
	L1i < 4 & F0F0F0F0h ⇒ a
	a & L1i ⊕ a ↦2	***...
	L1i < 8 & FF00FF00h ⇒ a
	a & L1i ⊕ a ↦2
	L1i < 16 ⇒ a
	a & L1i ⊕ a ↦2	***Проверяем на монотонность на наборах, соседних по первой компоненте
	∆i
	↑(i<n)1
∆f
n ⊕ 1 ↪2
	*isBFMonotonicHelper(L1,0,n/f)
§2
	**

isBFMonotonicHelper(L1,l,h/f)
Of
h - l > 1 + l ⇒ m ⇒ j
l ⇒ i
§1
	L1i & L1j ⊕ L1i ↦3
	∆i ∆j
	↑(j<h)1
∆f
h - l ⊕ 2 ↪3	***↑((h-l)=2)3
	*isBFMonotonicHelper(L1,l,m/f)
	f ↪3
	*isBFMonotonicHelper(L1,m,h/f)
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
	a & 55555555h < 1 ∨ v ⇒ b	**Меняем местами чётные и нечётные биты
b > 2 & 33333333h ⇒ v
b & 33333333h < 2 ∨ v ⇒ b	***Меняем местами пары битов
	b > 4 & 0f0f0f0fh ⇒ v
	b & 0f0f0f0fh < 4 ∨ v ⇒ b	***Меняем местами последовательности из 4-х битов
b > 8 & 00ff00ffh ⇒ v
b & 00ff00ffh < 8 ∨ v ⇒ b	***Меняем местами байты
	b > 16 ⇒ v
	b < 16 ∨ v ⇒ b	***Меняем местами 2-х байтовые слова
**

***generate random boolean function
genBF(n/L1)
***n - the number of args
***L1 - generated boolean function
OQ1
In + 31 > 5 ⇒ q
§1
	X > 16 ⇒ a
	X ⊕ a @>L1
	↑(Q1<q)1
Q1 ⊕ 1 ↦2	***↑(Q1≠1)2
	32 - In ⇒ n
	L1.0 > n ⇒ L1.0
§2
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
	32 - In ⇒s
	L1.0 < s > s % ⇒ q
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
	32 - In ⇒ s
	L1.0 < s > s ⇒ L1.0
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
↑(n>4)4
	@+F2(16) OQ2
	32 - In ⇒ s
	L1.0 < s > s ⇒ a
	§1
		a & 1 + '0' @>F2.0
		a > 1 ⇒ a ↦1
	In ⇒ n	***the number of bits
	↑(Q2=n)3
	§2
		'0' @>F2.0
		↑(Q2<n)2
	§3
		/F2>C
		→6
§4
	In > 5 ⇒ n ⇒ i
	∇i
	§5
		*printBool(L1i/)
		∇i
		↑(i<n)5
§6
	**

***Print boolean vector of 32bit variable
printBool(a/)
***a - variable
@+F1(32) OQ1
§1
	a & 1 + '0' @>F1.0
	a > 1 ⇒ a ↦1
↑(Q1=32)3
§2
	'0' @>F1.0
	↑(Q1<32)2
§3
	/F1>C
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
