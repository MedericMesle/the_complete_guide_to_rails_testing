require 'rails_helper'

RSpec.describe 'emphasize text' do
  it 'makes the text uppercase and adds an exclamation point' do
    expect(emphasize('hello')).to eq('HELLO!')
  end
end
