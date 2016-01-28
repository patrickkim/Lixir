import _ from "lodash";

export class Greeter {

  constructor() {
    this.temp = [1 , 2 , 3 , 4 , 5];
   }

  hello() {
    console.log("helllloooo");
    console.log("test module", _(this.temp).includes(5));
  }
}
