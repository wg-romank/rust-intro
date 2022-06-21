# Manual Memory

```rust
struct List<T> {
  data: T,
  next: Option<Box<List<T>>>,
}
```

It gets worse

```rust
# use std::rc::Rc;

struct DoubleLinkedList<T> {
  data: T,
  next: Option<Rc<DoubleLinkedList<T>>>, // Rc is reference counting type
  previous: Option<Rc<DoubleLinkedList<T>>>,
}
```

Too Many Lists [1](https://rust-unofficial.github.io/too-many-lists/index.html)
