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
      it 'titleがないとitemは保存できない' do
        @blog.title = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Title can't be blank")
      end
    end
  end
end
