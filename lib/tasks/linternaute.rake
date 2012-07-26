require 'rubygems'
require 'active_record'
require 'yaml'
require 'logger'
require 'nokogiri'
require 'open-uri'

namespace :linternaute => :environment do
  desc "Task description"
  task :citation  do
    url="http://www.linternaute.com/citation/auteur/11/1/"
    url2="http://www.linternaute.com/citation/auteur/11/"
    debut=Nokogiri::HTML(open(url))
    nbr_page=debut.css('a.multipage_lien').last.text.to_i
    (1..nbr_page).each do |page|
      nouv_page="#{url2}#{page.to_s}/"
      auteur_doc=Nokogiri::HTML(open(nouv_page))
      auteur_doc.css("a.nom_personnage").each do |perso|
        Auteur.new do |auteur|
          auteur.name=perso.text
          aut_cit_doc=Nokogiri::HTML(open(perso["href"]))
          if aut_cit_doc.css("multipage_lien")==nil
            aut_cit_doc.css("td.libelle_citation").each do |citation|
              auteur.citation.new(:data=>citation.css("a").text)
            end
          else
            (0..aut_cit_doc.css("multipage_lien").last.text.to_i).each do |citation|
              
              
            end
          end
          cita=auteur.citations.new 

          auteur.save     
        end
      end

    end



  end 
end






