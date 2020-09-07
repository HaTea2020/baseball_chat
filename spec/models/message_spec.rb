require 'rails_helper'

RSpec.describe Message, type: :model do
  describe '#create' do
    before do
      @message = FactoryBot.build(:message)
      @message.image = fixture_file_upload(('public/images/test_image.png'))
    end
    context "チャットできる時" do
      it "contentとimageが存在指定れば保存できる事" do
        expect(@message).to be_valid
      end
      it "contentが存在していれば保存できる事" do
        @message.image = nil
        expect(@message).to be_valid
      end
      it 'iamgeが存在していれば保存できる事' do
        @message.comment = nil
        expect(@message).to be_valid
      end
    end
    context "チャット出来ない時" do
      it 'contentとimageが空では保存できない事' do
        @message.comment = nil
        @message.image = nil
        @message.valid?
        expect(@message.errors.full_messages).to include("Comment can't be blank")
      end
    end
  end
end
