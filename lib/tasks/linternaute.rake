require 'rubygems'
require 'active_record'
require 'yaml'
require 'logger'
require 'nokogiri'
require 'open-uri'

task :citation => :environment do 
  
  urls= [
    [106,'argent','http://www.linternaute.com/citation/theme/106/'],
    [103,'histoire','http://www.linternaute.com/citation/theme/103/'],
    [140,'spectacle','http://www.linternaute.com/citation/theme/140/'],
    [89,'morale','http://www.linternaute.com/citation/theme/89/'],
    [112,'sentiments','http://www.linternaute.com/citation/theme/112/'],
    [124,'temps-qui-passe','http://www.linternaute.com/citation/theme/124/']
    ]
  nbr_page_citations_css='td.multipage_corps a.multipage_lien'
  text_citation_css='td.libelle_citation a'
  
urls.each do |url|
  #trouve nbre page                
  dest="#{url[2]}#{url[1]}/"
   p dest
  nbr_page=Nokogiri::HTML(open(dest)).css(nbr_page_citations_css) 
   p nbr_page.last.text 
  nbr_page=nbr_page.last.text.to_i 
 
  (1..nbr_page).each do |page|  
    new_dest="#{url[2]}#{page.to_s}/#{url[1]}/"  
    p new_dest
    doc=Nokogiri::HTML(open(new_dest)) 
    doc.css(text_citation_css).each do |citation|
      Citation.new(:theme=>url[1],:data=>citation.text).save
      
    end
    
  end
  
end

  
end