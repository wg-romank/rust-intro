# Example: Mutex

In imaginary game engine

```python
class Posion:
  def onTick(self):
    self.entity.health -= 1

class Missile:
  def onCollide(self, entity):
    with entity.lock():
      entity.health -= 10
```

In Rust `Mutex` *owns* its underlying data

```rust,editable
use std::sync::Mutex;

fn main() {
  let entity: u32 = 0;
  let e = Mutex::new(entity);
  e.lock();
}
```

**Source:** RustConf 2021 Compile-Time Social Coordination [1](https://www.youtube.com/watch?v=4_Jg-rLDy-Y)
