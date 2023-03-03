function expandAll(btn) {
    $('ol.collapse').collapse('show');
}

function collapseAll(btn) {
    $('ol.collapse').collapse('hide');
}

$("#collapse").click(function(){
    $('#navitem').animate({
        width: ["toggle", "swing"]
    })
})
