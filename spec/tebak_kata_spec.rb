require 'spec_helper'
require 'stringio'
require './loading.rb'

RSpec.describe 'Check if', :type => :aruba do
  let(:file) { 'key.txt' }
  let(:content) { 'Ruby' }
  before(:each) { touch(file) }
  before(:each) { write_file(file, content) }
  
  it "File is exists" do
    expect(file).to be_an_existing_file  
  end
  
  it "File not exits" do
    expect(file).to have_file_content content
  end
  
  it "Content match" do
    expect(file).to have_file_content content
  end
end

describe 'Input Name' do
  before do
    $stdin = StringIO.new("Zainal Mustofa\n")
  end

  after do
    $stdin = STDIN
  end

  it "Test if can capture name" do
    expect($stdin.gets.chomp).to be == 'Zainal Mustofa'
  end
end

describe 'Test if loading work well' do
  it "start" do
    expect(loading(0.01)).to be == 1
  end
end