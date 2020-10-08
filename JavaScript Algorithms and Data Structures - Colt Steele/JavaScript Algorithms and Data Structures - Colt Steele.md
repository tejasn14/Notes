# 🧮 Algorithms and Data Structures

## Problem solving patterns

### 1. Frequency Counter Pattern

```js
function validAnagram(first, second) {
  // compare if the 2 arrays/strings are equal in length
  if (first.length !== second.length) {
    return false;
  }
  // object to keep count
  let lookup = {};

  for (var letter in first) {
    // add them to the object with count
    lookup[letter] ? (lookup[letter] += 1) : (lookup[letter] = 1);
    //  more elegant looking way : lookup[letter] = ++lookup[letter] || 1
  }
  // iterate through the second array and decrease the count of the 	corresponding letter in the lookup up object
  for (var letter in second) {
    // can't find letter or letter is zero then it's not an anagram
    if (!lookup[letter]) {
      return false;
    } else {
      // if found letter decrease the count by 1
      lookup[letter] -= 1;
    }
  }
  // if it reached here then it is an anagram
  return true;
}

console.log(validAnagram("aaz", "zza"));
console.log(validAnagram("anagram", "nasgaram"));
```

---

### 2. Multiple Pointers

> **Type 1** - move in opposite directions: 2 ends

```js
function sumZero(arr) {
  // left and right are 2 pointers which move through the array
  let left = 0;
  let right = arr.length - 1;
  while (left < right) {
    let sum = arr[left] + arr[right];
    if (sum === 0) {
      return [arr[left], arr[right]];
    } else if (sum > 0) {
      right--;
    } else {
      left++;
    }
  }
}

sumZero([-4, -3, -2, -1, 0, 1, 2, 3, 10]); // output: [-3, 3]
sumZero([-4, -3, -2, -1, 0, 5, 10]); // output: undefined
```

> **Type 2** - move in the same direction

```js
function countUniqueValues(arr) {
  if (arr.length === 0) return 0;
  var i = 0;
  for (var j = 1; j < arr.length; j++) {
    if (arr[i] !== arr[j]) {
      i++;
      arr[i] = arr[j];
    }
  }
  return i + 1;
}

countUniqueValues([1, 1, 2, 3, 3, 4, 5, 6, 6, 7]); // 7

i[(1, 1, 2, 3, 3, 4, 5, 6, 6, 7)];
j;
```

---

### 3. Sliding Window

`maxSubarraySum([1, 2, 3, 5, 2, 8, 1, 5], 3) // 10`

instead of looping through the entire array we can add the next and subtract the previous

[`1, 2, 3`, 5, 2, 8, 1, 5]

[1, ` 2, 3, 5`, 2, 8, 1, 5] `add 5 and subtract 1 insteading of adding all again`

```js
function maxSubarraySum(arr, num) {
  let maxSum = 0;
  let tempSum = 0;
  if (arr.lengt < num) return null;
  for (let i = 0; i < num; i++) {
    maxSum += arr[i];
  }
  tempSum = maxSum;
  for (let i = num; i < arr.length; i++) {
    tempSum = tempSum - arr[i - num] + arr[i];
    maxSum = Math.max(maxSum, tempSum);
  }
  return maxSum;
}
```

---

### 4. Divide and Conquer

```js
```
