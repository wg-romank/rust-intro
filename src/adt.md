# Algebraic Data Types & Pattern Matching

- product types as `struct`s [1](https://en.wikipedia.org/wiki/Product_type)
- sum types as `enum`s [1](https://en.wikipedia.org/wiki/Tagged_union)

```rust,editable
enum Option<T> {
  None,
  Some(T),
}

fn test(values: Option<&Vec<u32>>) -> String {
  match values {
    Option::None =>
      "none".to_string(),
    Option::Some(v) if v.len() > 3 =>
      "3+".to_string(),
    Option::Some(v) =>
      v.len().to_string(),
  }
}

fn main() {
  let v = vec![1, 2, 3, 4];
  println!("{}", test(Option::Some(&v)));
}
```
