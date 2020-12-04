require 'rails_helper'
RSpec.describe Artist, type: :model do
  before do
    @artist = FactoryBot.build(:artist)
  end

  describe 'artist新規登録' do
    context '新規登録がうまくいくとき' do
      it "lineとtwitter以外の項目が存在すれば新規登録できる" do
        expect(@artist).to be_valid
      end

      it "lineが空でも登録できる" do
        @artist.line = nil
        expect(@artist).to be_valid
      end

      it "twitterが空でも登録できる" do
        @artist.twitter = nil
        expect(@artist).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "nameが空では登録できない" do
        @artist.name = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include("Name can't be blank")
      end

      it "emailが空では登録できない" do
      end

      it "passwordが空では登録できない" do
      end

      it "job_requestが空では登録できない" do
      end

      it "arttype_idが空では登録できない" do
      end

      it "arttouch_idが空では登録できない" do
      end

      it "profileが空では登録できない" do
      end

      it "price_idが空では登録できない" do
      end

      it "重複したemailでは登録できない" do
      end

      it "emailに@を含んでいなければ登録できない" do
      end

      it "passwordが5文字以下では登録できない" do
      end

      it "passwordが半角英数字混合で入力されていない場合、登録できない" do
      end

      it "passwordが存在してもpassword_confirmationが空では登録できない" do
      end

      it "passwordとpassword_confirmationが一致していない場合、登録できない" do
      end

      it "arttype_idが1だと登録できない" do
      end

      it "arttouch_idが1だと登録できない" do
      end

      it "price_idが1だと登録できない" do
      end
    end
  end
end