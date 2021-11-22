class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

#TDD (desenvolvimento guiado por testes)
describe AvengersHeadQuarter do
  it "deve adicionar um vingador" do
    hq = AvengersHeadQuarter.new

    hq.put("Spiderman")
    expect(hq.list).to include "Spiderman"
  end

  it "deve adicionar uma lista de vingadores" do
    hq = AvengersHeadQuarter.new
    hq.put ("Thor")
    hq.put("Hulk")
    hq.put ("Spiderman")

    res = hq.list.size > 0
    expect(res).to be true

    expect(hq.list.size).to be > 0
    #expect(hq.list).to include "Thor"
  end

  it "Thor deve ser o primeiro da lista" do
    hq = AvengersHeadQuarter.new
    hq.put ("Thor")
    hq.put("Hulk")
    hq.put ("Spiderman")

    expect(hq.list).to start_with("Thor")
  end

  it "Ironman deve ser o primeiro da lista" do
    hq = AvengersHeadQuarter.new
    hq.put ("Thor")
    hq.put("Hulk")
    hq.put ("Spiderman")
    hq.put("Ironman")

    expect(hq.list).to end_with("Ironman")
  end

  it "deve conter o sobrenome" do
    avenger = "Capitao America"

    expect(avenger).to match(/America/)
    expect(avenger).not_to match(/Blanco/)
  end
end
