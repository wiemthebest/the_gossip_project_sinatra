
require 'pry'
require 'csv'
class Gossip
    attr_accessor :autor, :content
    def initialize (autor, content)
        @autor = autor
        @content = content
    end
    def save
        CSV.open("./db/gossip.csv", "ab") do |csv|
            csv << [@autor, @content]
        end
    end
end