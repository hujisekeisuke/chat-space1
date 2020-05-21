require 'rails_helper'

describe User do
  describe '#create' do
    
    it "メッセージがあれば保存できる"
    user = build(:message)
    expect(user).to be_valid

  end
end