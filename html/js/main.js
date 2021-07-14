'use strict';

var QBRadialMenu = null;

$(document).ready(function(){

    window.addEventListener('message', function(event){
        var eventData = event.data;

        if (eventData.action == "ui") {
            if (eventData.radial) {
                createMenu(eventData.items)
                QBRadialMenu.open();
            } else {
                QBRadialMenu.close();
            }
        }

        if (eventData.action == "setPlayers") {
            createMenu(eventData.items)
        }
    });
});

function createMenu(items) {
    QBRadialMenu = new RadialMenu({
        parent      : document.body,
        size        : 375,
        menuItems   : items,
        onClick     : function(item) {
            if (item.shouldClose) {
                QBRadialMenu.close();
            }
            
            if (item.event !== null) {
                if (item.data !== null) {
                    $.post('https://qb-radialmenu/selectItem', JSON.stringify({
                        itemData: item,
                        data: item.data
                    }))
                } else {
                    $.post('https://qb-radialmenu/selectItem', JSON.stringify({
                        itemData: item
                    }))
                }
            }
        }
    });
}

$(document).on('keydown', function(e) {
    switch(e.key) {
        case "Escape":
        case "f1":
            QBRadialMenu.close();
            break;
    }
});