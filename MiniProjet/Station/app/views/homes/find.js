$("#result").text("");

$("#result").append("<%= escape_javascript(render partial: 'station', locals: {stations: @research}) %>")


//
