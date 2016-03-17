# Power User Service
## Installation Instructions

Load dependencies with bundle:

```
$ gem install bundle
$ bundle
```

Load the app in irb

```
$ irb
2.2.3 :001 > load './lib/power_user.rb'
```

## Running the Program

```
2.2.3 :001 > load './lib/power_user.rb'
 => true
2.2.3 :002 > power_user = PowerUser.new
 => #<PowerUser:0x007fd91a932830>
2.2.3 :003 > power_user.get_status('joebloggs@gmail.com')
 => "ACTIVE_USER"
```

## Running Tests
```
$ rspec
```

## How I worked
The main class power_user is fed by three other classes. I've ordered it this way to have a good separation of concerns so each class has a responsibility for different parts of the process. This way it's easy to go in and change either the criteria, the scores attributed to each criteria or the boundaries for each status, which I've set as constants.
