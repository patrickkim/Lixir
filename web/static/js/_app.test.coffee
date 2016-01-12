describe "mocha setup and test ENV", ->
  describe "underscore", ->
    it "has _ available", ->
      expect(_).to.be.ok
      array = [0, 1, false, 2, '', 3]
      expect(_.compact(array)).to.deep.equal [1,2,3]
