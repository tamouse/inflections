# Inflections

A simple test of creating inflections.

Someone on the #rubyonrails IRC channel on freenode had a model called `TempData` and were unhappy
about how Rails inflected it to `TempDatum` following standard singular/plural inflection rules.

Having never done any inflections, I wanted to see how it works.

The inflection rule is added to the `config/initializers/inflections.rb` file as:

``` ruby
  inflect.uncountable 'temp_data'
```

And the `TempData` model belongs to the `Location` model in a `has_many` relationship, so you end up with methods on a `Location` object like `l1.temp_data`, `l1.temp_data=`, `l1.temp_data_ids`, and `l1.temp_data_ids=`.

It seems to work pretty well.

The wisdom of using a name such as "TempData" is best left for a different time and place. I just wanted to see how this worked.

