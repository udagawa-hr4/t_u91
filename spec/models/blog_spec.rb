require 'rails_helper'

RSpec.describe Blog, type: :model do
  before do
    @blog = FactoryBot.build(:blog)
  end
  
  describe 'Calendarの保存' do
    context 'Calendarに投稿出来る場合' do
      it 'text,content,start_timeがある場合保存できる' do
        expect(@blog).to be_valid
      end
    end
    context 'calendarに保存できない場合' do
      it 'titleがないとitemは保存できない' do
        @blog.title = nil
        @blog.valid?
        binding.pry
        expect(@blog.errors.full_messages).to include("")
      end
    end
  end
end
