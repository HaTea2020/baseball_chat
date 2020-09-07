require 'rails_helper'

RSpec.describe Room, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.create(:user)
      @room = FactoryBot.build(:room, user_id: @user.id)
    end
    context "ルームが作成できる時" do
      it "nameの値が存在すれば登録できる事" do
        expect(@room).to be_valid
      end
    end
    context "ルームが作成出来ない時" do
      it "nameが空では登録できない事"do
        @room.name = nil
        @room.valid?
        expect(@room.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end
