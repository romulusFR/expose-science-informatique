Métaphore filée

- Couteau VS informatique (ordinateur)
- Métiers

Algo de tri

Par un dev

```js
let a = [];
for (let i = 0; i < 100; ++i) {
  a.push(Math.floor(Math.random() * 1000));
}

a.sort((x, y) => x - y);
```

```python
from random import randrange
a = [randrange(1000) for _ in range(100)]
a.sort()
```

les maths

$sort : \mathbb{N}^\star \to \mathbb{N}^\star$ telle que $a$ et $sort(a)$ on les mêmes éléments et $sort(a)$ est trié, $\forall i \in [1\ldots \mathrm{len}(a) - 1]$ il est vrai que $a[i] \leq a[i+1]$





![The child of CS and maths](img/machine-learning-noah-what-the-hell-is-this-child-of-computer-science-statistics-and-mathematics.jpg)

---

> Informatics is a distinct scientific discipline, characterised by its own concepts, methods, body of knowledge, and open issues. It can be synthetically described as the science of automated processing of representations. It covers the foundations of computational structures, processes, artefacts and systems, as well as their software designs, their applications, and their impact on society.

Source [Informatics Reference Framework for School](https://www.informaticsforall.org/the-informatics-reference-framework-for-school-release-february-2022/)