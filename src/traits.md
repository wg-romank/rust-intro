# Traits

- No inheritance
- Behavior described through traits

```rust,editable
struct Point {
  x: f32,
  y: f32,
}

trait Show {
  fn show(&self) -> String;
}

impl Show for Point {
  fn show(&self) -> String {
    format!("{};{}", self.x, self.y)
  }
}

fn main() {
  let p = Point { x: 0.5, y: 1.3 };
  println!("{}", p.show());
}
```
