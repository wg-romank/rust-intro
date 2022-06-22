# Manual Memory

It gets worse

```rust,editable
use std::rc::Rc;

struct DoubleLinkedList<T> {
  data: T,
  next: Option<Rc<DoubleLinkedList<T>>>,
  previous: Option<Rc<DoubleLinkedList<T>>>,
}

fn main() {}
```

* `Rc` is reference counting pointer [1](https://doc.rust-lang.org/std/rc/struct.Rc.html)
* copying `Rc` increments counter
* when `Rc` handle goes out of scope it decrements counter


Too Many Lists [1](https://rust-unofficial.github.io/too-many-lists/index.html)
