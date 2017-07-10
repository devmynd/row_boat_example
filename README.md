# Row Boat Example App

This app provides examples for how to use the [RowBoat gem](https://github.com/devmynd/row_boat).

[Dataset from data.gov](https://catalog.data.gov/dataset/college-scorecard) is a college scorecard.

## Dependencies

- Ruby
- Bundler
- Postgres

## Usage

Once you `bundle install` and `rails db:schema:load` you should be ready to run `rails server`. Then simply visit `localhost:3000` and you should see buttons to do a "Basic Import" or an "Advanced Import". Once you do either import you'll see a list of the colleges and have the option to "Delete All" (so you can check out the other import option).

## RowBoat Files

- [`BasicCollegetBoat`](/app/models/basic_college_boat.rb)
- [`AdvancedCollegetBoat`](/app/models/advanced_college_boat.rb)
