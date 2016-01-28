describe("Mocha/Frontend test setup", () => {

  it("works", () => {
    expect(true).to.be.ok;
  });

  describe("#underscore/lodash", () => {
    it("has _ available", () => {
      let array = [0, 1, false, 2, '', 3];

      expect(_).to.be.ok;
      expect(_.compact(array)).to.deep.equal([1,2,3]);
    });
  });

  describe("#sinon", () => {
    it("has sinon", () => {
      expect(sinon).to.be.ok;
    });

     it("can spy", () => {
      let spy_test = sinon.spy();

      spy_test();
      expect(spy_test.called).to.be.true;
    });
  });

  describe("#virtual_dom", () => {
    it("has a document", () => {
      expect(document).to.exist;
    });

    it("has a window", () => {
      expect(window).to.exist;
    });

    it("has DOM element #root set as react_el", () => {
      expect(react_el).to.exist;
    });
  });
});
