// 4. Late Initialization (late)
// Sometimes you know a variable will be initialized before it's used, but you can't do it at the declaration.

late String temperature;

void readSensor() {
  temperature = "25°C";
}

void main() {
  readSensor();
  print(temperature); // Works fine.
}
