require 'player'
require 'human'

describe Human do

  it { is_expected.to respond_to :hand }

  it 'Should initialize with a hand of nil' do
    expect(subject.hand).to be nil
  end

  context '#chooses' do

    it { is_expected.to respond_to :choose }

    it 'should change players hand' do
      subject.choose(:rock)
      expect(subject.hand).to be :rock
    end

    it 'should raise error if choice is invalid' do
      expect{subject.choose(:snake)}.to raise_error 'Invalid Choice'
    end
  end
end
