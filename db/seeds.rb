3.times do |topic|
    Topic.create!(title: "Topic #{topic}")
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "The standard chunk of Lorem Ipsum used 
    since the 1500s is reproduced below for those interested. 
    Sections 1.10.32 and 1.10.33 from  by Cicero are also reproduced in their exact original form, accompanied 
    by English versions from the 1914
    translation by H. Rackham.", topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails" ,
    body: "The standard chunk of Lorem Ipsum used 
    since the 1500s",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Javascript" ,
    body: "The standard chunk of Lorem Ipsum used 
    since the 1500s",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
    )
end

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
    )
end

puts "3 technologies created"
