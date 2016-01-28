import { Greeter } from "./greet"

describe('Greet', () => {

  let greetings = new Greeter();

  it('should be available', () => {
    expect(Greeter).to.be.ok;
    expect(greetings).to.be.ok;
    expect(greetings.temp.length).to.equal(5)
  });
})
