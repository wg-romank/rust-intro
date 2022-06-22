# Bullet points

* Strong static typing [1](https://en.wikipedia.org/wiki/Strong_and_weak_typing)
* Type inference
* No GC
* No exceptions
* No `null`'s *
* Memory safety *

```rust,editable
fn main() {
  let a = vec![1, 2, 3, 4, 5];
  println!("{:?}", a);

  let sum: u32 = a.iter().sum();
  println!("{}", sum);
}
```
