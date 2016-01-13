describe "Mocha/Frontend test setup", ->

  describe "#underscore", ->
    it "has _ available", ->
      expect(_).to.be.ok
      array = [0, 1, false, 2, '', 3]
      expect(_.compact(array)).to.deep.equal [1,2,3]

  describe "#sinon", ->
    it "has sinon", ->
      expect(sinon).to.be.ok

    it "can spy", ->
      spy_test = sinon.spy()
      spy_test()
      expect(spy_test.called).to.be.true

  describe "#virtual_dom", ->
    it "has a window and document", ->
      expect(@window).to.exist
      expect(@document).to.exist
