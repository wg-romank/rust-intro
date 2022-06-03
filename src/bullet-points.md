# Bullet points

* Strong static typing
* Type inference
* No GC
* No exceptions
* No `null`'s

```rust,editable
fn main() {
  let a = vec![1, 2, 3, 4, 5];
  println!("{:?}", a);

  let sum: u32 = a.iter().sum();
  println!("{}", sum);
}
```
