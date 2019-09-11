# Shopping Basket Tech Test

Shopping Basket tech test for Credit Suisse.
Been given permission to use Ruby instead of Java.
Please note that all prices are in pence

## The question:

> Using Java, write a simple program that calculates the price of a basket of shopping.
> The solution should be accomplished in roughly two hours.
> Items are presented one at a time, in a list, identified by name - for example "Apple" or "Banana".
> Multiple items are present multiple times in the list, so for example ["Apple", "Apple", "Banana"] is a basket with two apples and one banana.
> Items are priced as follows:
> * Apples are 35p each
> * Bananas are 20p each
> * Melons are 50p each, but are available as 'buy one get one free'
> * Limes are 15p each, but are available in a 'three for the price of two' offer
>
>Given a list of shopping, calculate the total cost of those items.

## Prerequisite
* ruby version 2.6.0
* bundler

## Installation
* please clone repo
* please run `bundle install`

## Tests
* in main project directory please run the command `rspec`

## To Run / Example
* in the main project directory run `irb` (a Ruby REPL)
* try the following:
  * `require_relative './lib/shopping_basket.rb'`
  * `basket = ShoppingBasket.new`
  * `basket.add_item('apple')`
  * `basket.add_item('melon')`
  * `basket.add_item(['apple', 'melon', 'lime','lime','lime','apple','melon','banana'])`
  * `basket.price`

![example](https://github.com/ajosephides/cs-tech-test-shopping/blob/master/public/basket_example.png)

