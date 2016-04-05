class HelloController < ApplicationController
	def coucou
			#Métodes vide (render :text=>"<h1>Coûcoû<h1>")
			render :coucou
	end
	def quelle_heure
		@heure = Time.now.strftime("%H:%M")
	end
end
