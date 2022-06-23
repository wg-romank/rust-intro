# Manual Memory

It gets worse

```rust,editable
use std::rc::Rc;
use std::cell::RefCell;

type Link<T> = Rc<RefCell<Node<T>>>;

struct Node<T> {
  data: T,
  next: Option<Link<T>>,
  previous: Option<Link<T>>,
}

fn main() {}
```

* `Rc` is reference counting pointer [1](https://doc.rust-lang.org/std/rc/struct.Rc.html)
* copying `Rc` increments counter
* when `Rc` handle goes out of scope it decrements counter
* `RefCell` is a type that allows interior mutability [1](https://doc.rust-lang.org/std/cell/struct.RefCell.html)


Too Many Linked Lists [1](https://rust-unofficial.github.io/too-many-lists/index.html)
