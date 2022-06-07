# Algebraic Data Types & Pattern Matching

```rust
# struct Point {
#   x: f32,
#   y: f32,
# }
# fn in_area(p: &Point) -> bool { false }

use std::time::Duration;

enum Driver {
  Offline,
  Available { location: Point },
  OnJob { pickup: Point, dropoff: Point, eta: Duration },
}

fn serve(driver: &mut Driver) {
  match driver {
    Driver::Offline => todo!("..."),
    Driver::Available { location } if in_area(location) => todo!("..."),
    Driver::Available { location } => todo!("..."),
    Driver::OnJob { pickup, dropoff, eta } => todo!("..."),
  }
}
```
