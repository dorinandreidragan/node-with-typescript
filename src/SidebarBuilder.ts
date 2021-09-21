class Being {
  public eat(): void {
    console.log("eat");
  }

  public sleep(): void {
    console.log("sleep");
  }
}

class Person extends Being {}

class Animal extends Being {}

export function main(): void {
  const being1 = new Person();
  const being2 = new Animal();

  being1.eat();
  being1.sleep();

  being2.eat();
  being2.sleep();
}

console.log();
