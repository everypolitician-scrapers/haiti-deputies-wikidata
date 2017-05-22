#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

pages = [
  'Category:Members_of_the_Chamber_of_Deputies_(Haiti)'
]

names = pages.map { |c| WikiData::Category.new(c, 'en').member_titles }.flatten.uniq
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names })
