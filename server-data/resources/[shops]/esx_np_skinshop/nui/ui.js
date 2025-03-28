$(function(){
    
    $("#menu").hide();
    window.model = "m"; //hombre por defecto

    window.addEventListener('message', function(event){ //event viene compuesto por showmenu y masc (true = hombre, false = mujer)
        var item = event.data;

        if(item.showMenu == true){
            showMenu(true); //abrir menu
        } else {
            showMenu(false); //cerrar menu
        }

        if (item.masc !== true){
            window.model = "f"; //but menu for women
        }

        if (item.type == "clotheshop"){
            
        }

        if (item.type == "accesorieshop"){
            $('#pantalon').hide();
            $('#corbata').hide();
            $('#mochilas').hide();
            $('#manos').hide();
            $('#polera').hide();
            $('#zapato').hide();
            $('#chaqueta').hide();
            $('#sombrero').hide();
            $('#gafas').hide();
            $('#muñeca').hide();
            $('#pulsera').hide();
            $('#chaleco').hide();
        }

    });

    menu(); //LLAMAMOS A LA FUNCION MENU


    // Fechar NUI no Esc
    document.onkeydown = function(data){ // document.onkeyup
        if(data.which == 27){
            $.post('http://esx_np_skinshop/exit');
        }
        if(data.which == 65 || (data.which == 65 && data.repeat)){ //a if
            //lastTime = Date.now();
            $.post('http://esx_np_skinshop/rotate', JSON.stringify("left"));
        }
        if(data.which == 68 || (data.which == 68 && data.repeat)) { //d if
            //lastTime = Date.now();
            $.post('http://esx_np_skinshop/rotate', JSON.stringify("right"));
        }
        if(data.which == 39) { // right
            //alert("Teste")
            $.post('http://esx_np_skinshop/color', JSON.stringify("right"));
        }
        if(data.which == 37) { // left
            //alert("Teste")
            $.post('http://esx_np_skinshop/color', JSON.stringify("left"));
        }
    }

});

function showMenu(bool){
    if (bool) {
        $("div").each(function(i,obj){
            var element = $(this);

            if (element.attr("data-parent")){
                element.hide();
            } else {
                element.fadeIn(500);
            }
        });
    }
    else{
        $("#menu").fadeOut(500);
    }
}

function menu(){
    $(".classes").each(function(i, ojb){
        var menu = $(this).data("sub");
        var element = $("#"+menu);
        
        $(this).click(function(){       
            if (menu == "mascara" || menu == "chapeu" || menu == "oculos" || menu == "orelha"){
                $.post('http://esx_np_skinshop/zoom', JSON.stringify("cara"));
            }
            else if (menu == "sapato"){
                $.post('http://esx_np_skinshop/zoom', JSON.stringify("zapatos"));
            }
            else if (menu == "gravata" || menu == "blusa" || menu == "jaqueta" || menu == "colete"){
                $.post('http://esx_np_skinshop/zoom', JSON.stringify("tops"));
            }
            else if (menu == "calca"){
                $.post('http://esx_np_skinshop/zoom', JSON.stringify("pants"));
            }
            else{
                $.post('http://esx_np_skinshop/zoom', JSON.stringify("ropa"));
            }
            if (menu != "mascara" && menu != "mochila"){
                if (typeof model !== 'undefined') { // POR EJEMPLO
                    var element = $("#"+menu+model); //#calcaf ??
                } else {
                    var element = $("#"+menu+"m"); //#calcam ??
                }
            } else {
                var element = $("#"+menu);        // MENUS UNISEX             
            }

            $(".item").each(function(i, ojb){
                $(this).hide()
            });
            
            element.fadeIn(500);
        });
    });


    $("#confirm").each(function(i, ojb){
        $(this).click(function(){       
            $.post('http://esx_np_skinshop/endDialog');
        });
    });


    $(".botao").each(function(i, ojb){
        $(this).click(function(){
            if($(this).parent().attr("id") == "mascara"){
                var dados = 1;
            }
            if($(this).parent().attr("id") == "maosf" || $(this).parent().attr("id") == "maosm"){
                var dados = 3;
            }
            if($(this).parent().attr("id") == "calcaf" || $(this).parent().attr("id") == "calcam"){
                var dados = 4;
            }
            if($(this).parent().attr("id") == "mochila"){
                var dados = 5;
            }
            if($(this).parent().attr("id") == "sapatof" || $(this).parent().attr("id") == "sapatom"){
                var dados = 6;
            }
            if($(this).parent().attr("id") == "gravataf" || $(this).parent().attr("id") == "gravatam"){
                var dados = 7;
            }
            if($(this).parent().attr("id") == "blusaf" || $(this).parent().attr("id") == "blusam"){
                var dados = 8;
            }
            if($(this).parent().attr("id") == "coletef" || $(this).parent().attr("id") == "coletem"){
                var dados = 9;
            }
            if($(this).parent().attr("id") == "jaquetaf" || $(this).parent().attr("id") == "jaquetam"){
                var dados = 11;
            }
            if($(this).parent().attr("id") == "chapeuf" || $(this).parent().attr("id") == "chapeum"){
                var dados = 2;
            }
            if($(this).parent().attr("id") == "oculosf" || $(this).parent().attr("id") == "oculosm"){
                var dados = 10;
            }
            if($(this).parent().attr("id") == "relojf" || $(this).parent().attr("id") == "relojm"){
                var dados = 13;
            }
            if($(this).parent().attr("id") == "braceletf" || $(this).parent().attr("id") == "braceletm"){
                var dados = 14;
            }


            var tipo = $(this).data("action");
            $.post("http://esx_np_skinshop/update", JSON.stringify([dados, tipo]));
        })
    })
}