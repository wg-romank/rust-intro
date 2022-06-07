# Example: Mutex

In imaginary game logic

```python
class Posion:
  def onTick(self):
    self.entity.health -= 1

class Missile:
  def onCollide(self, entity):
    with entity.lock():
      entity.health -= 1
```

In Rust `Mutex` *owns* its underlying data

```rust
struct Mutex<T> {
  data: T,
}
```

**Source:** RustConf 2021 Compile-Time Social Coordination [1](https://www.youtube.com/watch?v=4_Jg-rLDy-Y)
