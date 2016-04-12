$('#prenoms').append("<%= j(render :partial => 'prenom', :locals => {:prenom => @prenom}) %>");
$('#prenom_texte').val('').focus();
