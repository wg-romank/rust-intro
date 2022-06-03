# Parameter polymorphism

```rust,editable
trait Display {
  fn show(&self) -> String;
}

fn generic_fn<T: Display>(t: &T) -> String {
  t.show()
}

fn generic_fn_sugar(t: impl Display) -> String {
  t.show()
}
```
