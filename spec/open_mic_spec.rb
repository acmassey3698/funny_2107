require './lib/joke'
require './lib/user'
require './lib/open_mic'

RSpec.describe OpenMic do

  it 'Exists with attributes' do
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    expect(open_mic).to be_a(OpenMic)
    expect(open_mic.location).to eq("Comedy Works")
    expect(open_mic.date).to eq("11-20-18")
    expect(open_mic.performers).to eq([])
  end




end
