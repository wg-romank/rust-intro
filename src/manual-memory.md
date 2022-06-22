# Manual Memory

Types need to have known size

```rust,editable
enum List<T> {
  Nil,
  Cons(T, Box<List<T>>),
}

fn main() {}
```

* `Box` is a heap pointer [1](https://doc.rust-lang.org/std/boxed/struct.Box.html)
* `Box` pointer is never `null`
* `Box` pointer gets deallocated when the handle goes out of scope

Other kinds of managed pointers [1](https://doc.rust-lang.org/stable/book/ch15-00-smart-pointers.html)
