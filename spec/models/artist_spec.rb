require 'rails_helper'
RSpec.describe Artist, type: :model do
  before do
    @artist = FactoryBot.build(:artist)
  end

  describe 'artist新規登録' do
    context '新規登録がうまくいくとき' do
      it 'lineとtwitter以外の項目が存在すれば新規登録できる' do
        expect(@artist).to be_valid
      end

      it 'lineが空でも登録できる' do
        @artist.line = nil
        expect(@artist).to be_valid
      end

      it 'twitterが空でも登録できる' do
        @artist.twitter = nil
        expect(@artist).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it 'nameが空では登録できない' do
        @artist.name = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('登録名を入力してください')
      end

      it 'emailが空では登録できない' do
        @artist.email = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('メールアドレスを入力してください')
      end

      it 'passwordが空では登録できない' do
        @artist.password = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('パスワードを入力してください')
      end

      it 'job_requestが空では登録できない' do
        @artist.job_request = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('仕事の依頼方法を入力してください')
      end

      it 'arttype_idが空では登録できない' do
        @artist.arttype_id = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('絵の種類を入力してください')
      end

      it 'arttouch_idが空では登録できない' do
        @artist.arttouch_id = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('絵のタッチを入力してください')
      end

      it 'profileが空では登録できない' do
        @artist.profile = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('プロフィールを入力してください')
      end

      it 'price_idが空では登録できない' do
        @artist.price_id = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('1人の価格を入力してください')
      end

      it '重複したemailでは登録できない' do
        @artist.save
        another_artist = FactoryBot.build(:artist)
        another_artist.email = @artist.email
        another_artist.valid?
        expect(another_artist.errors.full_messages).to include('メールアドレスはすでに存在します')
      end

      it 'emailに@を含んでいなければ登録できない' do
        @artist.email = 'abcdefgh'
        @artist.valid?
        expect(@artist.errors.full_messages).to include('メールアドレスは不正な値です')
      end

      it 'passwordが5文字以下では登録できない' do
        @artist.password = 'ab345'
        @artist.password_confirmation = 'ab345'
        @artist.valid?
        expect(@artist.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end

      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @artist.password_confirmation = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end

      it 'passwordとpassword_confirmationが一致していない場合、登録できない' do
        @artist.password = 'abc123'
        @artist.password_confirmation = 'abc456'
        @artist.valid?
        expect(@artist.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end

      it 'arttype_idが1だと登録できない' do
        @artist.arttype_id = 1
        @artist.valid?
        expect(@artist.errors.full_messages).to include('絵の種類を選択して下さい')
      end

      it 'arttouch_idが1だと登録できない' do
        @artist.arttouch_id = 1
        @artist.valid?
        expect(@artist.errors.full_messages).to include('絵のタッチを選択して下さい')
      end

      it 'price_idが1だと登録できない' do
        @artist.price_id = 1
        @artist.valid?
        expect(@artist.errors.full_messages).to include('1人の価格を選択して下さい')
      end
    end
  end
end
