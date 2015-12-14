require 'appium_lib'

describe 'Liputan 6' do
  before(:all) do
    appium_txt = File.join(Dir.pwd, 'appium.txt')
    caps = Appium.load_appium_txt file: appium_txt
    Appium::Driver.new(caps).start_driver
    Appium.promote_appium_methods RSpec::Core::ExampleGroup
    @top_elements = find_elements :class_name, 'android.support.v7.app.ActionBar$Tab'
  end

  after(:all) do
    driver_quit
  end

  describe 'Top Menu' do
    it 'has Latest top menu' do
      latest = @top_elements[1]
      expect(latest.click).to eq(true)
    end

    it 'has Popular top menu' do
      popular = @top_elements[2]
      expect(popular.click).to eq(true)
    end

    it 'has Top Stories menu' do
      top_stories = @top_elements[0]
      expect(top_stories.click).to eq(true)
    end

  end
  describe 'Navigate up' do

    before(:all) do
      @navigate = find_element :name, 'Navigate up'
      @navigate.click
      @elements= find_elements :id, 'menu_item_name'
    end

    it 'has Login' do
      login = @elements[0]
      expect(login.click).to eq(true)
      2.times { back }
      @navigate.click
    end

    it 'has Top Stories menu' do
      top_stories = @elements[2]
      expect(top_stories.click).to eq(true)
      @navigate.click
    end

    it 'has Latest News menu' do
      latest_news = @elements[3]
      expect(latest_news.click).to eq(true)
      @navigate.click
    end


    it 'has Popular menu' do
      popular = @elements[4]
      expect(popular.click).to eq(true)
      @navigate.click
    end

    it 'has TV Streaming menu' do
      tv_streaming = @elements[5]
      expect(tv_streaming.click).to eq(true)
      back
      @navigate.click
    end


    it 'has News menu' do
      news = @elements[7]
      expect(news.click).to eq(true)
      @navigate.click
    end

    it 'has Pilkada menu' do
      pilkada = @elements[8]
      expect(pilkada.click).to eq(true)
      @navigate.click
    end

    it 'has Bisnis menu' do
      bisnis = @elements[9]
      expect(bisnis.click).to eq(true)
      @navigate.click
    end

    it 'has Showbiz menu' do
      showbiz = @elements[10]
      expect(showbiz.click).to eq(true)
      @navigate.click
    end

    it 'has Bola menu' do
      bola = @elements[11]
      expect(bola.click).to eq(true)
      @navigate.click
    end


    it 'has Tekno menu' do
      tekno = @elements[12]
      expect(tekno.click).to eq(true)
      @navigate.click
    end


    it 'has Lifestyle menu' do
      lifestyle = @elements[13]
      expect(lifestyle.click).to eq(true)
      @navigate.click
    end
  end
end
