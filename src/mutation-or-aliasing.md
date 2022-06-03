# Mutation | Aliasing

* `&mut T` - unique reference to value of type `T`
* *many* `&T` or *one* `&mut T` at the same time

```rust,editable
fn add_one_inplace(a: &mut Vec<u32>) {
  for e in a.iter_mut() {
    *e += 1;
  }
}

fn main() {
  let mut a = vec![1, 2, 3, 4, 5];
  println!("{:?}", a);

  for _ in 0..3 {
    add_one_inplace(&mut a);
  }
  println!("{:?}", a);
}
```
