#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new('Category:Members_of_the_Chamber_of_Deputies_(Haiti)', 'en').member_titles
fr = WikiData::Category.new('Catégorie:Personnalité politique haïtienne', 'fr').member_titles
ht = WikiData::Category.new('Kategori:Politisyen ayisyen', 'ht').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { fr: fr, ht: ht, en: en })
