# Parameter polymorphism

Add guards to generic arguments to describe fine-grained behavior

```rust
trait Show {
  fn show(&self) -> String;
}

fn generic_fn<T: Show>(t: &T) -> String {
  t.show()
}

struct List<T> {
  data: T,
  next: Box<List<T>>,
}

impl<T: Show> Show for List<T> {
  fn show(&self) -> String {
    format!("{} -> {}", self.data.show(), self.next.show())
  }
}
```

See also chapter on trait objects [1](https://doc.rust-lang.org/book/ch17-02-trait-objects.html)
