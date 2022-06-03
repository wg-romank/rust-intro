# Ownership & Borrowing

* `T` - owned value of type `T`
* `&T` - reference to value of type `T`

```rust,editable
fn sum(a: &Vec<u32>) -> u32 {
  a.iter().sum()
}

fn add_one(a: Vec<u32>) -> Vec<u32> {
  a.into_iter().map(|e| e + 1).collect()
}

fn main() {
  let a = vec![1, 2, 3, 4, 5];

  println!("{}", sum(&a));
  println!("{:?}", add_one(a));
}
```
