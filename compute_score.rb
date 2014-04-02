def compute_score
  time = (Time.now - self.created_at)/3600.0
  gravity = 1.5
  points = self.points.to_i

  score = (points - 1)/(time + 2)**gravity
  self.update_attributes(:score => score*1000)
end

# http://blog.chh.tw/posts/hacker-news-de-tui-wen-xi-tong-yan-suan-fa-yong-ruby-shi-zuo/
# Hacker News 算法

# Delicious和Hacker News 算法 http://www.ruanyifeng.com/blog/2012/02/ranking_algorithm_hacker_news.html
# Reddit算法 http://www.ruanyifeng.com/blog/2012/03/ranking_algorithm_reddit.html