# Basic_1

## test1

### Hint is here

<details><summary>Hint</summary>

`filter`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = oneToFiveEvent
    .filter { $0 % 2 != 0 }
```

</details>

## test2

### Hint is here

<details><summary>Hint</summary>

`reduce`

</details>

### Answer is here

<details><summary>Answer</summary>

```swift
let answer = oneToFiveEvent
    .reduce(0) { $0 + $1 }
```

</details>

## test3

### Hint is here

<details><summary>Hint</summary>

`scan`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = oneToFiveEvent
    .scan(0) { $0 + $1 }
```

</details>

## test4

### Hint is here

<details><summary>Hint</summary>

`startWith`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = oneToFiveEvent
    .startWith(0)
```

</details>
## test5
### Hint is here

<details><summary>Hint</summary>

`map`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = oneToFiveEvent
    .map{ $0 + 1 }
```

</details>

## test6

### Hint is here

<details><summary>Hint</summary>

`map`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = sameValueEvent // 1, 1, 1, 2, 2
    .map { $0 * 2 }
```

</details>

## test7

### Hint is here

<details><summary>Hint</summary>

`take`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = sameValueEvent
    .take(2)
```

</details>

## test8

### Hint is here

<details><summary>Hint</summary>

`distinctUntilChanged`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = sameValueEvent
    .distinctUntilChanged()
```

Or

```swift
let answer = sameValueEvent
    .skip(2)
    .take(2)
```

</details>

## test9

### Hint is here

<details><summary>Hint</summary>

`element(:at)`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = sameValueEvent
    .element(at: 3)
```

</details>

## test10

### Hint is here

<details><summary>Hint</summary>

`ignoreElements`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = sameValueEvent
    .ignoreElements()
```

</details>
