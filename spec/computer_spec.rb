require 'player'
require 'computer'

describe Computer do

  it { is_expected.to respond_to :hand }

  it 'should initialize with random hand' do
    expect(subject.options.include?(subject.hand)).to be true
  end
end
