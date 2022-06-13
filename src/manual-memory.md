# Manual Memory

Types needs to have known size

```rust
struct List<T> {
  data: T,
  next: Box<List<T>>  // Box is a heap pointer
}
```

Need to use mutex for self-referential structs that require mutual mutation

```rust
# use std::sync::Mutex;

struct DoubleLinkedList<T> {
  data: T,
  next: Mutex<Box<DoubleLinkedList<T>>>,
  previous: Mutex<Box<DoubleLinkedList<T>>>,
}
```
