require 'rails_helper'
require "refile/file_double"
RSpec.describe Art, type: :model do
  before do
    @art = FactoryBot.build(:art)
  end

  describe '似顔絵登録' do
    context '登録がうまくいくとき' do
      it "image,arttype_id,arttouch_idが全て入力されていれば登録できる" do
        expect(@art).to be_valid
      end
    end

    context '登録ができないとき' do
      it "imageが空では登録できない" do
        @art.image = nil
        @art.valid?
        binding.pry
        expect(@art.errors.full_messages).to include("")
      end
    end
  end
end
