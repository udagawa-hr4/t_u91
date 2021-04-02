require 'rails_helper'

RSpec.describe Blog, type: :model do
  before do
    user = FactoryBot.create(:user) 
    @blog = FactoryBot.build(:blog, user_id: user.id)
    # sleep 3
  end
  
  describe 'Calendarの保存' do
    context 'Calendarに投稿出来る場合' do
      it 'title,contentがある場合投稿できる' do
        expect(@blog).to be_valid
      end
      it 'contentがなくてもtextがあれば投稿出来る' do
        @blog.content = ""
        expect(@blog).to be_valid
      end
    end

    context 'calendarに保存できない場合' do
      it 'titleがないとCalendarは投稿できない' do
        @blog.title = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Titleを入力してください")
      end
      it "ユーザーが紐付いていなければ投稿できない" do
        @blog.user = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Userを入力してください")
      end
      it 'titleが21文字以上だと投稿できない' do
        @blog.title = "あいうえおかきくけこさしすせそたちつてとな"
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Titleは20文字以内で入力してください")
      end
    end
  end
end
