require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    user = FactoryBot.create(:user) 
    @post = FactoryBot.create(:post, user_id: user.id)
    # sleep 3
  end
  
  describe 'Tweetの保存' do
    context 'Tweetが投稿出来る場合' do
      it '入力内容に不備がない場合、投稿できる' do
        @post.text = "テストテキスト"
        @post.valid?
        expect(@post).to be_valid
      end
      it 'imageがなくてもtitle,textがあれば投稿出来る' do
        @post.text = "テストテキスト"
        @post.image = nil
        @post.valid?
        expect(@post).to be_valid
      end
    end

    context 'Tweetが保存できない場合' do
      it 'titleがないとTweetは投稿できない' do
        @post.title = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("タイトルを入力してください")
      end
      it 'textがないとTweetは投稿できない' do
        @post.text = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("テキストを入力してください")
      end
      it 'textは1000文字以内でないと投稿できない' do
        @post.text= ("a" * 1001)
        @post.valid?
        expect(@post.errors.full_messages).to include("テキストは1000文字以内で入力してください")
      end
      it 'titleが21文字以上だとTweetは投稿できない' do
        @post.title = "あいうえおかきくけこさしすせそたちつてとな"
        @post.valid?
        expect(@post.errors.full_messages).to include("タイトルは20文字以内で入力してください")
      end
      it "ユーザーが紐付いていなければTweetが投稿できない" do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Userを入力してください")
      end
    end
  end
end
