﻿var SimulationArea = {};
(function ($) {

    var $mainContainer = null;

    function refreshSimulationArea() {
        $.get('/SimulationArea')
            .done(function(result) {
                $mainContainer.html(result);
            })
            .always(function() {
                setTimeout(refreshSimulationArea, 1000);
            });
    }

    SimulationArea.init = function ($container) {
        $mainContainer = $container;
        setTimeout(refreshSimulationArea, 1000);
    };

})(jQuery);