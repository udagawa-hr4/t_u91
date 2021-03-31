require 'rails_helper'

RSpec.describe Blog, type: :model do
  before do
    @blog = FactoryBot.build(:blog)
  end
  
  describe 'Calendarの保存' do
    context 'Calendarに投稿出来る場合' do
      it 'text,contentがある場合投稿できる' do
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
        expect(@blog.errors.full_messages).to include("Title can't be blank")
      end
      it "ユーザーが紐付いていなければ投稿できない" do
        @blog.user = nil
        @blog.valid?
        binding.pry
        expect(@blog.errors.full_messages).to include("User must exist")
      end
    end
  end
end
