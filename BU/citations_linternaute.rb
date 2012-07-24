require 'rubygems'
require 'active_record'
require 'yaml'
require 'sqlite3'
require 'logger'
require 'nokogiri'
require 'open-uri'
@urls= [
  [106,'argent','http://www.linternaute.com/citation/theme/106/argent/'],
  [103,'histoire','http://www.linternaute.com/citation/theme/103/histoire/'],
  [140,'spectacle','http://www.linternaute.com/citation/theme/140/spectacle/'],
  [89,'morale','http://www.linternaute.com/citation/theme/89/morale/'],
  [112,'sentiments','http://www.linternaute.com/citation/theme/112/sentiments/'],
  [124,'temps_qui_pass','http://www.linternaute.com/citation/theme/124/temps-qui-passe/']
  ]
@nbr_page_citations_css='td.multipage_corps a.multipage_lien'
@text_citation_css='td.libelle_proverbe a strong'
