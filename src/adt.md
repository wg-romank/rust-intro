# Algebraic Data Types

```rust,editable
struct Point {
  x: f32,
  y: f32,
}

enum Driver {
  Offline,
  Available { location: Point },
  OnJob {
    scheduled: usize,
    pickup: Point,
    dropoff: Point,
    eta: u32
  },
}

impl Point {
  fn distance(&self, other: &Point) -> f32 {
    ((self.x - other.x).powf(2.) + (self.y - other.y).powf(2.)).sqrt()
  }
}
```
