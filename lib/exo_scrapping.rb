require 'rubygems'
require 'nokogiri'  
require 'open-uri'

#exercice 1

def getting_crypto_names 
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  crypto_name_data = page.xpath('/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div')
  crypto_name = Array.new
    crypto_name_data.each do |name|
    crypto_name << name.text
    end
  return crypto_name
 
end

def getting_crypto_values
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  crypto_value_data = page.xpath('/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a')
  crypto_value = Array.new
    crypto_value_data.each do |value|
    crypto_value << value.text
    end
return crypto_value
end

def final_array 
  names = getting_crypto_names
  values = getting_crypto_values
  final_array = [names, values].transpose.to_h
  puts final_array
end
final_array




  