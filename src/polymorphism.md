# Parameter polymorphism

<TODO: make this slide better>

```rust,editable
trait Show {
  fn show(&self) -> String;
}

fn generic_fn<T: Show>(t: &T) -> String {
  t.show()
}
```
