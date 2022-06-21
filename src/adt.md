# Algebraic Data Types & Pattern Matching

- product types as `struct`s [1](https://en.wikipedia.org/wiki/Product_type)
- sum types as `enum`s [1](https://en.wikipedia.org/wiki/Tagged_union)

```rust,editable
enum Option<T> {
  None,
  Some(T),
}

fn test(values: Option<&Vec<u32>>) {
  match values {
    Option::None => todo!("no values"),
    Option::Some(v) if v.len() > 3 => todo!("more than 3"),
    Option::Some(v) => todo!("{:?}", v),
  }
}

fn main() {
  let v = vec![1, 2, 3, 4];
  test(Option::Some(&v));
}
```
