# Structs & Impls

```rust,editable
struct Point {
  x: f32,
  y: f32,
}

impl Point {
  fn distance(&self, other: &Point) -> f32 {
    ((self.x - other.x).powf(2.) + (self.y - other.y).powf(2.)).sqrt()
  }

  fn shift(&mut self, x: f32, y: f32) {
     self.x += x;
     self.y += y;
  }
}

fn main() {
  let origin = Point { x: 0., y: 0. };
  let mut p1 = Point { x: 0., y: 2. };
  println!("distance {}", origin.distance(&p1));
  p1.shift(5., -2.);
  println!("distance {}", origin.distance(&p1));
}
```
