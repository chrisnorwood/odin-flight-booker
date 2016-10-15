# odin-flight-booker
## Book non-existant flights, for free!
This Rails application was built for [The Odin Project](http://www.theodinproject.com)'s Rails course [Advanced Forms Project](http://www.theodinproject.com/courses/32/lessons/410).  It was primarily an exercise in data associations (there are four models: Airport, Flight, Booking, and Passenger) and more 'advanced' form techniques, such as pre-populating data from multiple models and using nested attributes.

I also used this project as an excuse to try some new things.  I used [ZURB Foundation 6](http://foundation.zurb.com/) for my layout and the [Slim Templating Lanugage](http://slim-lang.com/) in my views, as opposed to Bootstrap and ERB in past projects.

![flight-booker-screenshot](https://cloud.githubusercontent.com/assets/18252139/19413350/60d8616a-92df-11e6-9fdf-93ff67175c45.png)

## Live Demo
[Odin Flight Booker on Heroku](https://top-flight-booker.herokuapp.com/)

## Installing
Run `rails db:migrate` then run `rails db:seed`.
This project relies on seed-data of 'made-up' flights, and it will not function without this data.
