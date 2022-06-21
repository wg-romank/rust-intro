# Manual Memory

Types needs to have known size

```rust
struct List<T> {
  data: T,
  next: Box<List<T>>,
}
```

* Box is a heap pointer
* Box pointer is never `null`
* Box pointer gets deallocated when the handle goes out of scope

Other kinds of managed pointers [1](https://doc.rust-lang.org/stable/book/ch15-00-smart-pointers.html)
