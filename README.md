# Moessner-Powers-Factorial

**Author:** Josh Forbes  
**Language:** Haskell  
**Filename:** `Moessner.hs`

---

## 🧠 Project Overview

This project implements **Moessner's Theorem** in Haskell to generate:

- Arbitrary **powers** of natural numbers  
- The **factorial** sequence  

It showcases elegant functional programming techniques such as infinite lists, recursion, zipping, skipping patterns, and cumulative sums.

---

## 📄 Sample Input

~~~~~~~~~~~~~~~~~~~
    print(skip_every_n 2 [1, 2, 3, 4, 5, 6, 7, 8])
    print (skip_growing [10,20,30,40,50,60,70,80,90,100, 110, 120, 130, 140, 150])
    print(running_sum [1, 2, 3, 4, 5])
    print(take 10 (moessner_powers 3))
    print (take 9 moessner_factorials)
~~~~~~~~~~~~~~~~~~~
## 📄 Sample Output

~~~~~~~~~~~~~~~~~~~
[1,3,5,7]
[20,40,50,70,80,90,110,120,130,140]
[1,3,6,10,15]
[1,8,27,64,125,216,343,512,729,1000]
[2,6,24,120,720,5040,40320,362880,3628800]
~~~~~~~~~~~~~~~~~~~

## 📚 References
* Moessner’s Theorem: A mathematical method to generate powers and factorials using structured elimination and summing.
* Infinite lists and laziness in Haskell.
* Functional decomposition for elegant expression of mathematical processes.

## 💡 Notes
All lists are lazily evaluated, making infinite data streams efficient and expressive.

Moessner’s Theorem can be generalized to other sequences with creative recursion.
