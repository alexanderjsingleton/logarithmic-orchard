require_relative 'orange_tree'

describe OrangeTree do
  let(:tree) { OrangeTree.new }

  describe '#age' do
    it 'should display the age' do
      expect(tree.age).to eq(0)
    end

  end



  describe '#height' do

    it 'should return the tree\'s height' do
      expect(tree.height).to eq(0)
    end

  end


  describe '#age!' do
    it 'should change the age by one' do
      #This should be more explicit. How much should the tree age by?
      #https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-change
      expect{tree.age!}.to change{tree.age}.by(1)
    end

    it 'should make the tree grow' do
      #This should be more explicit. How much should the tree grow?
      expect{tree.age!}.to change{tree.height}
    end

    it 'should cause the tree to eventually die' do
      tree.age = 200
      tree.age!
      expect(tree.dead?).to be true
    end
  end

  describe '#dead?' do

  let(:groot) { OrangeTree.new }


    it 'should return false for an alive tree' do
      expect(groot.dead?).to be false
    end

    it 'should return true for a dead tree' do
      expect(tree.dead?).to be false
    end
  end

  describe '#any_oranges?' do

  let(:fruit_tree) { OrangeTree.new }
  # let(:fruit_tree.age) {10}

    it 'should return true if oranges are on the tree' do
      fruit_tree.age = 10
      fruit_tree.age!
      expect(fruit_tree.any_oranges?).to be true
    end

  let(:groot) { OrangeTree.new }
    it 'should return false if the tree has no oranges' do
      expect(groot.any_oranges?).to be false
    end
  end

  describe '#pick_an_orange' do

    let(:fruit_tree) { OrangeTree.new }

    it 'should return an orange from the tree' do
      fruit_tree.age = 10
      fruit_tree.age!
      expect(fruit_tree.pick_an_orange!.class).to eq(Orange)
    end
  end
end