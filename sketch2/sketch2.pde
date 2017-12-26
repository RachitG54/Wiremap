
import lumarca.*;

public Lumarca thisLumarca;

void setup() {
  for (int i = 0; i < 3; i++ ) {
    println("before");
  }
  size(1024, 768, Lumarca.RENDERER);
  for (int i = 0; i < 3; i++ ) {
    println("hi");
  }
}

public void draw() {
  sphere(60);
}
