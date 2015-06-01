require_relative 'orange_tree'

describe Orange do

let(:groot) { OrangeTree.new }

  it 'should produce an orange with a diameter beweeten 5 and 15' do
    groot.age = 10
    groot.age!
    expect(groot.pick_an_orange!.diameter).to be_within(5).of(10)
  end

  it 'should pick an orange from tree individually' do
    groot.age = 10
    groot.age!
    expect(groot.pick_an_orange!.class).to eq(Orange)
  end




end