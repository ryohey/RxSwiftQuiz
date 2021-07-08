## test1

### Hint is here

<details><summary>Hint</summary>

`flatMap`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = Observable.of(1, 2, 3)
    .flatMap {
        Observable.of($0, $0)
    }
```

</details>

## test2

### Hint is here

<details><summary>Hint</summary>

`flatMap`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift
let answer = Observable.of(1, 2, 3)
    .flatMap { num -> Observable<Int> in
        if num % 2 == 0 {
            return Observable.empty()
        } else {
            return Observable.just(num)
        }
    }
```

</details>
    
## test3

### Hint is here

<details><summary>Hint</summary>

`compactMap`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift

let answer = Observable.of(1, 2, 3)
    .compactMap { num -> Int? in
        if num % 2 == 0 {
            return nil
        } else {
            return num
        }
    }

```

</details>

## test4

### Hint is here

<details><summary>Hint</summary>

`merge`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift

let answer = Observable.of(3, 2, 1)
    .map {
        self.asyncRequest($0)
    }
    .merge()

```

</details>

## test5

### Hint is here

<details><summary>Hint</summary>

`concat`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift

let answer = Observable.of(3, 2, 1)
    .map {
        self.asyncRequest($0)
    }
    .concat()

```

</details>

## test6

### Hint is here

<details><summary>Hint</summary>

`flatMap`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift

let answer = Observable.of(3, 2, 1)
    .flatMap { self.asyncRequest($0) }

```

## test7

### Hint is here

<details><summary>Hint</summary>

`concatMap`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift

let answer = Observable.of(3, 2, 1)
    .concatMap { self.asyncRequest($0) }

```

## test8

### Hint is here

<details><summary>Hint</summary>

`switchLatest`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift

let answer = Observable.of(1, 2, 3)
    .map { self.asyncRequest($0) } // <- Do not edit this line.
    .switchLatest()

```

## test9

### Hint is here

<details><summary>Hint</summary>

`flatMapLatest`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift

let answer = Observable.of(1, 2, 3)
    .flatMapLatest {
        self.asyncRequest($0)
    }

```

## test10

### Hint is here

<details><summary>Hint</summary>

`flatMapFirst`

</details>

### Answer is here

<details>
<summary>
Answer
</summary>

```swift

let answer = Observable.of(1, 2, 3)
    .flatMapFirst {
        self.asyncRequest($0)
    }

```

</details>
