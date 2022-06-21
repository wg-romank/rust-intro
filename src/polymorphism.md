# Parameter polymorphism

Add guards to generic arguments to describe fine-grained behavior

```rust,editable
trait Show {
  fn show(&self) -> String;
}

enum List<T> {
  Nil,
  Cons(T, Box<List<T>>),
}

impl<T: Show> Show for List<T> {
  fn show(&self) -> String {
    match self {
      List::Nil => "Nil".to_string(),
      List::Cons(t, l) => format!("{} -> {}", t.show(), l.show())
    }
  }
}

impl<T: ToString> Show for T {
  fn show(&self) -> String { self.to_string() }
}

fn main() {
  let l = List::Cons(10, Box::new(List::Cons(5, Box::new(List::Nil))));
  println!("{}", l.show());
}
```

For dynamic dispatch see also chapter on trait objects [1](https://doc.rust-lang.org/book/ch17-02-trait-objects.html)
