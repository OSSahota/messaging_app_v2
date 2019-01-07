require 'message'

describe Message do
  # subject(:message) { described_class.new('Just foo, no bar') }
  subject(:message) { Message.create(text: 'message_spec.rb message') }
  let(:time_double) { Time.now.strftime('%d-%m-%Y %H:%M:%S') }
  let(:created_at) { message.created_at.strftime('%d-%m-%Y %H:%M:%S') }

  it 'saves some text' do
    expect(message.text).to eq 'message_spec.rb message'
  end

  it 'saves the current time' do
    expect(created_at).to eq time_double
  end

  # Seems like a redundant test as id will always be unique and
  # incremental.
  # it 'second message saves its id as 1' do
  #   expect(message.id).to eq 1
  # end
end
