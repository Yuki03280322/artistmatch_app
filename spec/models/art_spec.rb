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
        expect(@art.errors.full_messages).to include("似顔絵を入力してください")
      end

      it "arttype_idが空では登録できない" do
        @art.arttype_id = nil
        @art.valid?
        expect(@art.errors.full_messages).to include("絵の種類を入力してください")
      end

      it "arttouch_idが空では登録できない" do
        @art.arttouch_id = nil
        @art.valid?
        expect(@art.errors.full_messages).to include("絵のタッチを入力してください")
      end

      it "arttype_idが1だと登録できない" do
        @art.arttype_id = 1
        @art.valid?
        expect(@art.errors.full_messages).to include("絵の種類を選択して下さい")
      end

      it "arttouch_idが1だと登録できない" do
        @art.arttouch_id = 1
        @art.valid?
        expect(@art.errors.full_messages).to include("絵のタッチを選択して下さい")
      end
    end
  end
end
