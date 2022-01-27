'use strict';

var QBRadialMenu = null;

$(document).ready(function(){
    window.addEventListener('message', function(event){
        switch (event.data.action) {
            case "ui":
                if (event.data.radial) {
                    createMenu(event.data.items)
                    QBRadialMenu.open();
                } else {
                    QBRadialMenu.close();
                }
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
            
            if (item.items == null && item.shouldClose != null) {
                $.post('https://qb-radialmenu/selectItem', JSON.stringify({
                    itemData: item
                }))
            }
        }
    });
}

$(document).on('keydown', function(e) {
    switch(e.key) {
        case "Escape":
        case "F1":
            QBRadialMenu.close();
            break;
    }
});