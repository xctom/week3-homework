Place.delete_all
Review.delete_all

[{:name => "Navy Pier", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Navy_pier.jpg/1024px-Navy_pier.jpg", :admission_price => 0, :description => "Navy Pier is a 3,300-foot-long (1,010 m) pier on the Chicago shoreline of Lake Michigan. It is located in the Streeterville neighborhood of the Near North Side community area. The pier was built in 1916 at a cost of $4.5 million. It was a part of the Plan of Chicago developed by architect and city planner Daniel Burnham and his associates. As Municipal Pier #2 (Municipal Pier #1 was never built), Navy Pier was planned and built to serve as a mixed-purpose piece of public infrastructure. Its primary purpose was as a cargo facility for lake freighters, and warehouses were built up and down the Pier. However, the Pier was also designed to provide docking space for passenger excursion steamers, and in the pre–air conditioning era parts of the Pier, especially its outermost tip, were designed to serve as cool places for public gathering and entertainment. The Pier even had its own tram. Today, the pier is one of the most visited attractions in the entire Midwestern United States and is Chicago's number one tourist attraction."},
{:name => "Soldier Field", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/c/c7/Soldier_field_2006.jpg", :admission_price => 9000, :description => "Soldier Field is an American football stadium on the Near South Side of Chicago, Illinois, United States. Opened in 1924, it is the oldest NFL stadium, celebrating 90 years of operation. Since 1971 it has been the home of the National Football League's Chicago Bears. With a football capacity of 61,500, it is the third smallest stadium in the NFL. In 2003, the interior underwent extensive renovation."},
{:name => "Willis Tower", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Sears_Tower_ss.jpg/480px-Sears_Tower_ss.jpg", :admission_price => 2000, :description => "The Willis Tower, built as and still commonly referred to as Sears Tower, is a 108-story, 1,451-foot (442 m) skyscraper in Chicago, Illinois, United States. At completion in 1973, it surpassed the World Trade Center towers in New York to become the tallest building in the world, a title it held for nearly 25 years. The Willis Tower is the second-tallest building in the United States and the 12th-tallest in the world. More than one million people visit its observation deck each year, making it one of Chicago's most popular tourist destinations. The structure was renamed in 2009 by the Willis Group as part of its lease on a portion of the tower's space"},
{:name => "Art Institute of Chicago", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Art_Institute_of_Chicago_Lion_Statue_%282-D%29.jpg/500px-Art_Institute_of_Chicago_Lion_Statue_%282-D%29.jpg", :admission_price => 2000, :description => "The Art Institute of Chicago (AIC) is an encyclopedic art museum located in Chicago's Grant Park. It features a collection of Impressionist and Post-Impressionist art in its permanent collection. Its holdings also include American art, Old Masters, European and American decorative arts, Asian art, modern and contemporary art, and architecture and industrial and graphic design. In addition, it houses the Ryerson & Burnham Libraries."},
{:name => "University of Chicago", :photo_url => "https://collegeadmissions.uchicago.edu/sites/default/files/images/wallpapers/campus_city_lake_1280x800.jpg", :admission_price => 0, :description => "The University of Chicago (U of C, UChicago, or simply Chicago) is a private research university in Chicago, Illinois. Founded by the American Baptist Education Society with a donation from oil magnate and philanthropist John D. Rockefeller, the University of Chicago was incorporated in 1890; William Rainey Harper became the university's first president in 1891, and the first classes were held in 1892. Both Harper and future president Robert Maynard Hutchins advocated for Chicago's curriculum to be based upon theoretical and perennial issues rather than applied sciences and commercial utility"}
].each do |place_hash|
  p = Place.new
  p.name = place_hash[:name]
  p.photo_url = place_hash[:photo_url]
  p.admission_price = place_hash[:admission_price]
  p.description = place_hash[:description]
  p.save
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
