require 'rails_helper'

describe Book do
  before do
    @book = Book.new(title: 'Thing')
  end

  subject { @book }

  it { should respond_to(:title) }
  it { should be_valid }

  describe 'when title not presenet' do
    before { @book.title = '' }
    it { should_not be_valid }
  end

  describe 'when title is already taken' do
    before do
      book_dup = @book.dup
      book_dup.title = @book.title.upcase
      book_dup.save
    end

    it { should_not be_valid }

  end
end
