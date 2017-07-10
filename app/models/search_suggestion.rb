class SearchSuggestion

  def self.seed
    Article.find_each do |article|
      SearchSuggestion.seed_one(article)
    end
  end

  def self.seed_one(article)
    name = article.name
    1.upto(name.length - 1) do |n|
      prefix = name[0, n]
      $redis.zadd "search-suggestions:#{prefix.downcase}", 1, name.downcase
    end
  end

  def self.terms_for(prefix)
    $redis.zrevrange "search-suggestions:#{prefix.downcase}", 0, 9
  end

end